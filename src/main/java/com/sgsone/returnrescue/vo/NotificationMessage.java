package com.sgsone.returnrescue.vo;

public class NotificationMessage {

    static public enum Message {

        RETURNREGISTE("반품 요청건 등록","%s에서 %s 반품 요청 건이 등록되었습니다."),
        INSPECTNOTD("검수 완료","%s의 검수가 완료되어 %s등급이 책정되었습니다."),
        INSPECTGRADED("검수 완료","%s의 검수가 완료되어 D등급이 책정되었습니다. 회수/폐기를 선택해주세요."),
        DELIVERYINFOWAIT("배송 정보 입력 대기","%s의 배송지 입력 가능 기한이 1일 남았습니다. %s에 등록된 정보가 삭제됩니다. 배송 정보를 입력해주세요."),
        CHANGEPRICE("상품 금액 조정","%s의 판매 기간이 30일이 되어 상품 금액이 조정됩니다."),
        TENTHOUSANDSHOP("만원샵 이동","%s의 판매 기간이 60일이 되어 만원샵으로 이동됩니다. %s에 자동 등록되니 기간 내에 확인해 주세요."),
        AUTODONATE("자동 기부 처리","%s의 판매 기간이 90일이 되어 기부처리 됩니다. %s에 자동 등록되니 기간 내에 기부/회수/폐기를 선택해 주세요."),
        STOPSALEREQUEST("판매 중지 요청","%s의 판매 기간이 30일이 되어 판매 중지 처리됩니다. %s에 자동 처리 전에 판매 연장을 진행해 주세요."),
        DELIVERYREQUEST("배송 요청","%s에 대한 주문이 접수 되었습니다. 주문 내역 확인 후 상품을 발송해주세요."),
        RETURNREQUEST("환불 요청","%s의 반품이 접수되었습니다. 반품내역 확인 후 수거/환불을 진행해주세요."),
        ORDERREPORT("주문 현황 알림","<반품구조대 주문현황> %s 기준 -신규주문 %s건 -주문취소 %s건 -반품요청 %s건 -고객문의 %s건"),
        RETURNSAVEITEMREGISTE("반품수거보관 상품 등록","%s에서 %s 반품수거보관 요청건이 등록 되었습니다."),
        SAVEREGISTE("보관 등록","%s이 반품구조대에 안전하게 보관 처리되었습니다."),
        SAVETIMEDUEDATE("보관기간 종료 예정","%의 보관기간이 %s에 종료됩니다. 회수/기부/폐기를 결정하세요."),
        SAVETIMEENDDATE("보관기간 종료","%s의 60일 보관 정책에 따라 보관이 종료되었습니다. %s이후 정책에 따라 반품 구조대로 이관되어 처리됩니다."),
        CALCULATEDONE("정산완료","오늘 %s님의 정산완료 금액 %s원이 등록된 계좌로 입금되었습니다."),
        MANTOMANANSWERREGISTE("1:1문의 답변 등록","등록하신 문의사항에 대한 답변이 이메일로 전송되었습니다. 감사합니다."),
        BUSINESSREGISTEDONE("사업자 등록 완료","사업자 등록 검토가 완료되었습니다. 이제 반품구조대에 상품을 등록해 보세요.");


        private String MessageTitle;
        private String MessageContent;

        private Message(String title, String content) {
            MessageTitle = title;
            MessageContent = content;
        }

        public String getMessageTitle() {
            return MessageTitle;
        }
        public String getMessageContent() {
            return MessageContent;
        }
    }

    public static Message getMessage(Message message) {
        message.MessageContent = String.format(message.MessageContent);
        return message;
    }

    public static Message getMessage(Message message, String param1) {
        message.MessageContent = String.format(message.MessageContent, param1);
        return message;
    }

    public static Message getMessage(Message message, String param1, String param2) {
        message.MessageContent = String.format(message.MessageContent, param1, param2);
        return message;
    }

    public static Message getMessage(Message message, String param1, String param2, String param3) {
        message.MessageContent = String.format(message.MessageContent, param1, param2, param3);
        return message;
    }

    public static Message getMessage(Message message, String param1, String param2, String param3, String param4) {
        message.MessageContent = String.format(message.MessageContent, param1, param2, param3, param4);
        return message;
    }
}
