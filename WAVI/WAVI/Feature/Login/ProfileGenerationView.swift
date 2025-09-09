//
//  ProfileGenerationView.swift
//  WAVI
//
//  Created by 서영채 on 9/9/25.
//

import SwiftUI

struct ProfileGenerationView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                // 메인 텍스트
                VStack(alignment: .leading, spacing: 12) {
                    Text("나만의 프로필을\n만들어볼까요?")
                        .font(.system(size: 48, weight: .black))
                        .foregroundColor(Color.primaryGreen)
                    
                    Text("천 리 길도 한 걸음부터 차근차근!")
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 24)
                .padding(.top, 400)
                
                Spacer()
                
                // 버튼
                NavigationLink(destination: NicknameSelectionView()) {
                                    Text("다음으로")
                                        .font(.system(size: 14, weight: .semibold))
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity)
                                        .padding()
                                        .background(Color.primaryGreen)
                                        .cornerRadius(30)
                                        .padding(.horizontal, 24)
                                }
                                .padding(.bottom, 40)
            }
            .background(Color(.systemGray6).ignoresSafeArea())
        }
        
    }
}

struct ProfileGenerationView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileGenerationView()
    }
}
