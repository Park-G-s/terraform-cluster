## 테라폼을 이용한 환경에 따라 유동적인 웹클러스터 구축   
>테라폼을 이용하여, ASG,ELB,각종 네트워크 설정,ec2를 환경에 따라 유동적으로 프로비저닝

## 개발 환경
![window][window-image]
![amazonlinux2][amazonlinux2-image]

## 개발 언어
[![HCLVersion][HCL-image]][HCL-url]

## 개발 도구
![vscode][vscode-image]
![aws][aws-image]
![terraform][terraform-image]



![](../header.png)

## 준비사항

1. aws cli 다운로드
2. 환경변수 설정 및 access key, secret key 등록 

    AWS CLI:

    ```sh
    >aws configure
    AWS Access Key ID : [user access key id]
    AWS Secret Access Key : [user secret key]
    Default region name : ap-northeast-2 
    #서울 리전
    Default output format : json
    ```

3. 테라폼 다운로드 및 로컬 pc에 설치
https://www.terraform.io/downloads.html
4. AWS 콘솔에서 key.fair를 준비한후, .pem을 .pub으로 변환하는 작업이 선행되어야함.

## 인프라 구성도
1. tree 구조
    
    ```sh
    >tree
    ```
    <img src=https://user-images.githubusercontent.com/73996998/106762520-420a9d80-6679-11eb-84df-3631f325b6c7.png width="40%" height="80%" title="px(픽셀) 크기 설정" alt="tree"></img>
2. 구성도   
    <p>
    <img src=https://user-images.githubusercontent.com/73996998/106762854-944bbe80-6679-11eb-831d-09e7e07744c0.GIF width="80%" height="80%" title="px(픽셀) 크기 설정" alt="tree"></img>
    </p>   
    아이콘사용출처: https://aws.amazon.com/ko/architecture/icons/

## 스크린샷
1. ASG 생성 확인
<p>
<img src=https://raw.githubusercontent.com/Park-G-s/study/master/%EC%98%A4%ED%86%A0%EC%8A%A4%EC%BC%80%EC%9D%BC%EB%A7%81(%EA%B0%80%EB%A6%AC%EA%B8%B0).GIF width="80%" height="30%" title="px(픽셀) 크기 설정" alt="ASG"></img>
 </p>
2. ELB 생성 확인
<p>
<img src=https://raw.githubusercontent.com/Park-G-s/study/master/%EB%A1%9C%EB%93%9C%EB%B0%B8%EB%9F%B0%EC%84%9C(%EA%B0%80%EB%A6%AC%EA%B8%B0).GIF width="80%" height="30%" title="px(픽셀) 크기 설정" alt="ELB2"></img>
 </p>
3. ELB 정상작동 확인
<p>
<img src=https://raw.githubusercontent.com/Park-G-s/study/master/elb%20%EC%A0%95%EC%83%81%EC%9E%91%EB%8F%99(%EA%B0%80%EB%A6%AC%EA%B8%B0).GIF width="80%" height="30%" title="px(픽셀) 크기 설정" alt="ELB"></img>
 </p>


<!-- ## 사용 예제

스크린 샷과 코드 예제를 통해 사용 방법을 자세히 설명합니다.

_더 많은 예제와 사용법은 [Wiki][wiki]를 참고하세요._
-->
<!--## 개발 환경 설정

모든 개발 의존성 설치 방법과 자동 테스트 슈트 실행 방법을 운영체제 별로 작성합니다.

```sh
make install
npm test
```
## 업데이트 내역

* 0.2.1
    * 수정: 문서 업데이트 (모듈 코드 동일)
* 0.2.0
    * 수정: `setDefaultXYZ()` 메서드 제거
    * 추가: `init()` 메서드 추가
* 0.1.1
    * 버그 수정: `baz()` 메서드 호출 시 부팅되지 않는 현상 (@컨트리뷰터 감사합니다!)
* 0.1.0
    * 첫 출시
    * 수정: `foo()` 메서드 네이밍을 `bar()`로 수정
* 0.0.1
    * 작업 진행 중

## 정보

이름 – [@트위터 주소](https://twitter.com/dbader_org) – 이메일주소@example.com

XYZ 라이센스를 준수하며 ``LICENSE``에서 자세한 정보를 확인할 수 있습니다.

[https://github.com/yourname/github-link](https://github.com/dbader/)

## 기여 방법

1. (<https://github.com/yourname/yourproject/fork>)을 포크합니다.
2. (`git checkout -b feature/fooBar`) 명령어로 새 브랜치를 만드세요.
3. (`git commit -am 'Add some fooBar'`) 명령어로 커밋하세요.
4. (`git push origin feature/fooBar`) 명령어로 브랜치에 푸시하세요. 
5. 풀리퀘스트를 보내주세요.
-->
<!-- Markdown link & img dfn's -->
[HCL-image]: https://img.shields.io/badge/HCL-blue
[terraform-image]: https://img.shields.io/badge/terraform-0.14.5-blue?logo=terraform&logoColor=white
[window-image]: https://img.shields.io/badge/Window-10-blue?logo=windows&logoColor=white
[amazonlinux2-image]: https://img.shields.io/badge/AmazonLinux-2-orange?logo=amazon-aws&logoColor=white
[vscode-image]: https://img.shields.io/badge/vscode-1.52.1-blueviolet?logo=visual-studio-code&logoColor=white
[HCL-url]: https://www.terraform.io/downloads.html
[aws-image]: https://img.shields.io/badge/-aws-orange?logo=amazon-aws&logoColor=white