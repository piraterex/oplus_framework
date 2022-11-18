.class public interface abstract Lcom/android/internal/telephony/gsm/ISmsMessageExt;
.super Ljava/lang/Object;
.source "ISmsMessageExt.java"


# virtual methods
.method public blacklist getUserDataOem8bit([B[BII)Ljava/lang/String;
    .locals 1
    .param p1, "mUserData"    # [B
    .param p2, "mPdu"    # [B
    .param p3, "mCur"    # I
    .param p4, "byteCount"    # I

    .line 13
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isAmlDataMessage([B)Ljava/lang/Boolean;
    .locals 1
    .param p1, "data"    # [B

    .line 24
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isEnable8BitMtSms()Z
    .locals 1

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist oemGetSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 1
    .param p1, "scAddress"    # Ljava/lang/String;
    .param p2, "destinationAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # I
    .param p4, "data"    # [B
    .param p5, "statusReportRequested"    # Z

    .line 9
    const/4 v0, 0x0

    return-object v0
.end method
