//
//  ProfileView.swift
//  WAVI
//
//  Created by 박현빈 on 7/28/25.
//

import SwiftUI

struct ProfileSettingsView: View {
    var body: some View {
        VStack(spacing: 30) {
            
            // 뒤로가기 버튼
            HStack {
                Spacer()
                Button("뒤로가기") {
                    // 뒤로가기 액션
                }
                .padding(10)
                .background(Color.gray.opacity(0.3))
                .foregroundColor(.black)
                .cornerRadius(10)
                .padding()
            }

            // 프로필 사진 + 수정하기 버튼
            VStack {
                ZStack(alignment: .bottomTrailing) {
                    Circle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: 120, height: 120)
                        .overlay(Text("프로필"))
                    
                    Button("수정하기") {
                        // 프로필 이미지 수정
                    }
                    .font(.caption)
                    .padding(5)
                    .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .offset(x: 10, y: 10)
                }

                // 프로필명 + 수정하기 버튼
                HStack(spacing: 10) {
                    Text("프로필명")
                    Button("수정하기") {
                        // 이름 수정
                    }
                    .font(.caption)
                    .padding(5)
                    .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
            }

            // 설정 항목들
            VStack(spacing: 15) {
                Button(action: {}) {
                    Text("푸시 알림")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.gray)
                        .cornerRadius(15)
                        .foregroundColor(.white)
                }

                Button(action: {}) {
                    Text("개인 정보 수정")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.gray)
                        .cornerRadius(15)
                        .foregroundColor(.white)
                }

                Button(action: {}) {
                    Text("로그아웃")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.black.opacity(0.6))
                        .cornerRadius(15)
                        .foregroundColor(.white)
                }
            }
            .padding(.horizontal)

            Spacer()

            // 하단 네비게이션 바
            HStack(spacing: 25) {
                ForEach(0..<4) { i in
                    Circle()
                        .fill(i == 3 ? Color.gray : Color.gray.opacity(0.3))
                        .frame(width: 50, height: 50)
                }
            }
            .padding()
            .background(Color.gray.opacity(0.3))
            .cornerRadius(15)
            .padding(.bottom, 20)
        }
    }
}

#Preview {
    ProfileSettingsView()
}

