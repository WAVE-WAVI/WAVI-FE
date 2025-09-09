//
//  LoginView.swift
//  WAVI
//
//  Created by 박현빈 on 7/28/25.
//

import SwiftUI

struct OnboardingLoginView: View {
    var body: some View {
        ZStack {
            Color.primaryGreen.ignoresSafeArea()

            VStack {
                OnboardingLoginBlock()
                    .padding(.top, 300) 
                Spacer()
            }
        }
    }
}



struct OnboardingLoginBlock: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("A WAY TO\nVICTORY")
                .foregroundColor(.BaseWhite)
                .typography(Typography.Headline2)
                .textCase(.uppercase)

            Text("수십 번, 수백 번 실패하더라도 성공하는 그 날까지.")
                .foregroundColor(.BaseWhite.opacity(0.9))
                .typography(Typography.Body1)
                .padding(.bottom, 10)
            
            
            

            PrimaryPillButton(
                title: "이메일로 계속하기",
                icon: Image("envelope"),
                action: { /* TODO: 이메일 로그인 */ }
            )

            HStack(spacing: 12) {
                SocialPillButton(title: "Apple", icon: Image(systemName: "apple.logo")) { }
                SocialPillButton(title: "Google", icon: Image("logo_google")) { }
                SocialPillButton(title: "Facebook", icon: Image("logo_facebook")) { }
            }

            Text("By continuing you agree on Terms of Services & Private Policy")
                .multilineTextAlignment(.center)
                .foregroundColor(.BaseWhite.opacity(0.8))
                .typography(Typography.Chip)
        }
        .padding(.horizontal, 24)
        .frame(width: 393, height: 312) // 블록 사이즈 고정
        .background(Color.clear)        // 필요하면 투명 or 카드 배경
    }
}


// MARK: - Components

/// 꽉 찬(Primary) 캡슐 버튼
struct PrimaryPillButton: View {
    let title: String
    let icon: Image?
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: 8) {
                if let icon { icon.resizable().scaledToFit().frame(width: 18, height: 18) }
                Text(title).typography(Typography.Body3) // 14 / 20 / Medium
            }
            .foregroundColor(.BaseBlack) // 글자색: 브랜드와 대비되게
            .frame(maxWidth: .infinity, minHeight: 54)
            .background(Color.BaseWhite)
            .clipShape(Capsule())
            .overlay(
                Capsule().stroke(Color.BaseWhite.opacity(0.0), lineWidth: 1)
            )
        }
        .shadow(color: .black.opacity(0.08), radius: 8, x: 0, y: 4)
    }
}

/// 테두리 있는 소셜 캡슐 버튼
struct SocialPillButton: View {
    let title: String
    let icon: Image?
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: 8) {
                if let icon { icon.resizable().scaledToFit().frame(width: 18, height: 18) }
                Text(title).typography(Typography.Body3) // 14 / 20 / Medium
            }
            .foregroundColor(.BaseBlack)
            .frame(maxWidth: .infinity, minHeight: 44)
            .background(Color.BaseWhite)
            .clipShape(Capsule())
            .overlay(
                Capsule().stroke(Color.BaseBlack.opacity(0.08), lineWidth: 1)
            )
        }
    }
}

// MARK: - Preview
#Preview {
    OnboardingLoginView()
}
