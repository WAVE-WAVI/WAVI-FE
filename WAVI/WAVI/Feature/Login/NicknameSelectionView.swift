//
//  NicknameSelectionView.swift
//  WAVI
//
//  Created by 서영채 on 9/9/25.
//

import SwiftUI

struct NicknameSelectionView: View {
    @State private var nickname = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("닉네임을\n선택해주세요")
                .font(.system(size: 48, weight: .black))
                .foregroundColor(Color.primaryGreen)
            
            Text("사용자 닉네임은 언제든 바꿀 수 있어요.")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.bottom, 20)
            
            
            TextField("사용할 이름을 입력하세요", text: $nickname)
                .padding()
                .font(.system(size: 14))
                .background(RoundedRectangle(cornerRadius: 40).stroke(Color.gray.opacity(0.5)))
            Spacer()
            
            Button(action: {
                print("닉네임: \(nickname)")
            }) {
                Text("다음으로")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(nickname.isEmpty ? Color.gray.opacity(0.3) : Color.primaryGreen)
                    .foregroundColor(.white)
                    .cornerRadius(40)
            }
            .disabled(nickname.isEmpty)
        }
        .padding(.top, 100)
        .padding()
        .navigationTitle("프로필 생성하기")
        .navigationBarTitleDisplayMode(.inline)
    }
}




struct NicknameSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        NicknameSelectionView()
    }
}
