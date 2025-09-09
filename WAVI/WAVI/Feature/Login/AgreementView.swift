//
//  AgreementView.swift
//  WAVI
//
//  Created by 서영채 on 9/9/25.
//


import SwiftUI

struct AgreementView: View {
    @State private var agreeAll = false
    @State private var agree1 = false
    @State private var agree2 = false
    @State private var agree3 = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            
            // 제목
            VStack(alignment: .leading, spacing: 8) {
                Text("새로운 도전,\n안전한 시작")
                    .font(.system(size: 48, weight: .black))
                    .foregroundColor(Color.primaryGreen)
                
                Text("시작하기 전, 몇 가지 동의가 필요해요!")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
            }
            .padding(.top, 300)
            
            // 체크박스 리스트
            VStack(alignment: .leading, spacing: 20) {
                CheckRow(title: "이용 약관 전체 동의", isOn: $agreeAll)
                    .onChange(of: agreeAll) { newValue in
                        agree1 = newValue
                        agree2 = newValue
                        agree3 = newValue
                    }
                
                Divider()
                
                CheckRow(title: "이용 약관 동의(필수)", isOn: $agree1)
                CheckRow(title: "개인 정보 수집 및 이용 동의(필수)", isOn: $agree2)
                CheckRow(title: "E-mail 및 SMS 광고성 정보 수신 동의(선택)", isOn: $agree3)
            }
            
            Spacer()
            
            // 버튼
            Button(action: {
                print("다음으로 이동")
            }) {
                Text("다음으로")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background((agree1 && agree2) ? Color.primaryGreen : Color.gray.opacity(0.3))
                    .foregroundColor(.white)
                    .cornerRadius(40)
            }
            .disabled(!(agree1 && agree2))
        }
        .padding(.horizontal, 20)
    }
}

// 체크박스 컴포넌트
struct CheckRow: View {
    let title: String
    @Binding var isOn: Bool
    
    var body: some View {
        Button(action: {
            isOn.toggle()
        }) {
            HStack {
                Image(systemName: isOn ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(isOn ? .primaryGreen : .gray)
                    .font(.system(size: 22))
                
                Text(title)
                    .foregroundColor(.black)
                    .font(.system(size: 16))
            }
        }
    }
}

struct AgreementView_Previews: PreviewProvider {
    static var previews: some View {
        AgreementView()
    }
}
