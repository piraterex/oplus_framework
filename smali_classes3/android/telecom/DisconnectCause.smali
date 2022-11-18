.class public final Landroid/telecom/DisconnectCause;
.super Ljava/lang/Object;
.source "DisconnectCause.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist ANSWERED_ELSEWHERE:I = 0xb

.field public static final whitelist BUSY:I = 0x7

.field public static final whitelist CALL_PULLED:I = 0xc

.field public static final whitelist CANCELED:I = 0x4

.field public static final whitelist CONNECTION_MANAGER_NOT_SUPPORTED:I = 0xa

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/DisconnectCause;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ERROR:I = 0x1

.field public static final whitelist LOCAL:I = 0x2

.field public static final whitelist MISSED:I = 0x5

.field public static final whitelist OTHER:I = 0x9

.field public static final whitelist REASON_EMERGENCY_CALL_PLACED:Ljava/lang/String; = "REASON_EMERGENCY_CALL_PLACED"

.field public static final whitelist REASON_EMULATING_SINGLE_CALL:Ljava/lang/String; = "EMULATING_SINGLE_CALL"

.field public static final whitelist REASON_IMS_ACCESS_BLOCKED:Ljava/lang/String; = "REASON_IMS_ACCESS_BLOCKED"

.field public static final whitelist REASON_WIFI_ON_BUT_WFC_OFF:Ljava/lang/String; = "REASON_WIFI_ON_BUT_WFC_OFF"

.field public static final whitelist REJECTED:I = 0x6

.field public static final whitelist REMOTE:I = 0x3

.field public static final whitelist RESTRICTED:I = 0x8

.field public static final whitelist UNKNOWN:I


# instance fields
.field private greylist-max-o mDisconnectCode:I

.field private greylist-max-o mDisconnectDescription:Ljava/lang/CharSequence;

.field private greylist-max-o mDisconnectLabel:Ljava/lang/CharSequence;

.field private greylist-max-o mDisconnectReason:Ljava/lang/String;

.field private blacklist mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field private blacklist mTelephonyDisconnectCause:I

.field private blacklist mTelephonyPreciseDisconnectCause:I

.field private greylist-max-o mToneToPlay:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 279
    new-instance v0, Landroid/telecom/DisconnectCause$1;

    invoke-direct {v0}, Landroid/telecom/DisconnectCause$1;-><init>()V

    sput-object v0, Landroid/telecom/DisconnectCause;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 6
    .param p1, "code"    # I

    .line 129
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 130
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "description"    # Ljava/lang/CharSequence;
    .param p4, "reason"    # Ljava/lang/String;

    .line 151
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 152
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 9
    .param p1, "code"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "description"    # Ljava/lang/CharSequence;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "toneToPlay"    # I

    .line 165
    const/16 v6, 0x24

    const v7, 0xffff

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;IIILandroid/telephony/ims/ImsReasonInfo;)V

    .line 169
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;IIILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "description"    # Ljava/lang/CharSequence;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "toneToPlay"    # I
    .param p6, "telephonyDisconnectCause"    # I
    .param p7, "telephonyPreciseDisconnectCause"    # I
    .param p8, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput p1, p0, Landroid/telecom/DisconnectCause;->mDisconnectCode:I

    .line 188
    iput-object p2, p0, Landroid/telecom/DisconnectCause;->mDisconnectLabel:Ljava/lang/CharSequence;

    .line 189
    iput-object p3, p0, Landroid/telecom/DisconnectCause;->mDisconnectDescription:Ljava/lang/CharSequence;

    .line 190
    iput-object p4, p0, Landroid/telecom/DisconnectCause;->mDisconnectReason:Ljava/lang/String;

    .line 191
    iput p5, p0, Landroid/telecom/DisconnectCause;->mToneToPlay:I

    .line 192
    iput p6, p0, Landroid/telecom/DisconnectCause;->mTelephonyDisconnectCause:I

    .line 193
    iput p7, p0, Landroid/telecom/DisconnectCause;->mTelephonyPreciseDisconnectCause:I

    .line 194
    iput-object p8, p0, Landroid/telecom/DisconnectCause;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 195
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 139
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 140
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 332
    instance-of v0, p1, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 333
    move-object v0, p1

    check-cast v0, Landroid/telecom/DisconnectCause;

    .line 334
    .local v0, "d":Landroid/telecom/DisconnectCause;
    iget v2, p0, Landroid/telecom/DisconnectCause;->mDisconnectCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telecom/DisconnectCause;->mDisconnectLabel:Ljava/lang/CharSequence;

    .line 335
    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telecom/DisconnectCause;->mDisconnectDescription:Ljava/lang/CharSequence;

    .line 336
    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telecom/DisconnectCause;->mDisconnectReason:Ljava/lang/String;

    .line 337
    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/telecom/DisconnectCause;->mToneToPlay:I

    .line 338
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getTone()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/telecom/DisconnectCause;->mTelephonyDisconnectCause:I

    .line 339
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getTelephonyDisconnectCause()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/telecom/DisconnectCause;->mTelephonyPreciseDisconnectCause:I

    .line 340
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 341
    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getTelephonyPreciseDisconnectCause()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 340
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telecom/DisconnectCause;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 342
    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getImsReasonInfo()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 334
    :goto_0
    return v1

    .line 344
    .end local v0    # "d":Landroid/telecom/DisconnectCause;
    :cond_1
    return v1
.end method

.method public whitelist getCode()I
    .locals 1

    .line 203
    iget v0, p0, Landroid/telecom/DisconnectCause;->mDisconnectCode:I

    return v0
.end method

.method public whitelist getDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 230
    iget-object v0, p0, Landroid/telecom/DisconnectCause;->mDisconnectDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getImsReasonInfo()Landroid/telephony/ims/ImsReasonInfo;
    .locals 1

    .line 267
    iget-object v0, p0, Landroid/telecom/DisconnectCause;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-object v0
.end method

.method public whitelist getLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 216
    iget-object v0, p0, Landroid/telecom/DisconnectCause;->mDisconnectLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getReason()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Landroid/telecom/DisconnectCause;->mDisconnectReason:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTelephonyDisconnectCause()I
    .locals 1

    .line 249
    iget v0, p0, Landroid/telecom/DisconnectCause;->mTelephonyDisconnectCause:I

    return v0
.end method

.method public blacklist getTelephonyPreciseDisconnectCause()I
    .locals 1

    .line 258
    iget v0, p0, Landroid/telecom/DisconnectCause;->mTelephonyPreciseDisconnectCause:I

    return v0
.end method

.method public whitelist getTone()I
    .locals 1

    .line 276
    iget v0, p0, Landroid/telecom/DisconnectCause;->mToneToPlay:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 320
    iget v0, p0, Landroid/telecom/DisconnectCause;->mDisconnectCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Landroid/telecom/DisconnectCause;->mDisconnectLabel:Ljava/lang/CharSequence;

    .line 321
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telecom/DisconnectCause;->mDisconnectDescription:Ljava/lang/CharSequence;

    .line 322
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telecom/DisconnectCause;->mDisconnectReason:Ljava/lang/String;

    .line 323
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telecom/DisconnectCause;->mToneToPlay:I

    .line 324
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telecom/DisconnectCause;->mTelephonyDisconnectCause:I

    .line 325
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telecom/DisconnectCause;->mTelephonyPreciseDisconnectCause:I

    .line 326
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telecom/DisconnectCause;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 327
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 320
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    .line 349
    const-string v0, ""

    .line 350
    .local v0, "code":Ljava/lang/String;
    iget v1, p0, Landroid/telecom/DisconnectCause;->mDisconnectCode:I

    packed-switch v1, :pswitch_data_0

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telecom/DisconnectCause;->mDisconnectCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 385
    :pswitch_0
    const-string v0, "CALL_PULLED"

    .line 386
    goto :goto_0

    .line 388
    :pswitch_1
    const-string v0, "ANSWERED_ELSEWHERE"

    .line 389
    goto :goto_0

    .line 382
    :pswitch_2
    const-string v0, "CONNECTION_MANAGER_NOT_SUPPORTED"

    .line 383
    goto :goto_0

    .line 379
    :pswitch_3
    const-string v0, "OTHER"

    .line 380
    goto :goto_0

    .line 376
    :pswitch_4
    const-string v0, "RESTRICTED"

    .line 377
    goto :goto_0

    .line 373
    :pswitch_5
    const-string v0, "BUSY"

    .line 374
    goto :goto_0

    .line 370
    :pswitch_6
    const-string v0, "REJECTED"

    .line 371
    goto :goto_0

    .line 367
    :pswitch_7
    const-string v0, "MISSED"

    .line 368
    goto :goto_0

    .line 364
    :pswitch_8
    const-string v0, "CANCELED"

    .line 365
    goto :goto_0

    .line 361
    :pswitch_9
    const-string v0, "REMOTE"

    .line 362
    goto :goto_0

    .line 358
    :pswitch_a
    const-string v0, "LOCAL"

    .line 359
    goto :goto_0

    .line 355
    :pswitch_b
    const-string v0, "ERROR"

    .line 356
    goto :goto_0

    .line 352
    :pswitch_c
    const-string v0, "UNKNOWN"

    .line 353
    nop

    .line 394
    :goto_0
    iget-object v1, p0, Landroid/telecom/DisconnectCause;->mDisconnectLabel:Ljava/lang/CharSequence;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, "label":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Landroid/telecom/DisconnectCause;->mDisconnectDescription:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    .line 396
    move-object v3, v2

    goto :goto_2

    :cond_1
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 397
    .local v3, "description":Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Landroid/telecom/DisconnectCause;->mDisconnectReason:Ljava/lang/String;

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    move-object v2, v4

    .line 398
    .local v2, "reason":Ljava/lang/String;
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DisconnectCause [ Code: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Label: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Description: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Reason: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Tone: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telecom/DisconnectCause;->mToneToPlay:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")  TelephonyCause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telecom/DisconnectCause;->mTelephonyDisconnectCause:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telecom/DisconnectCause;->mTelephonyPreciseDisconnectCause:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ImsReasonInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/telecom/DisconnectCause;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 303
    iget v0, p0, Landroid/telecom/DisconnectCause;->mDisconnectCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget-object v0, p0, Landroid/telecom/DisconnectCause;->mDisconnectLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 305
    iget-object v0, p0, Landroid/telecom/DisconnectCause;->mDisconnectDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 306
    iget-object v0, p0, Landroid/telecom/DisconnectCause;->mDisconnectReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    iget v0, p0, Landroid/telecom/DisconnectCause;->mToneToPlay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget v0, p0, Landroid/telecom/DisconnectCause;->mTelephonyDisconnectCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget v0, p0, Landroid/telecom/DisconnectCause;->mTelephonyPreciseDisconnectCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    iget-object v0, p0, Landroid/telecom/DisconnectCause;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 311
    return-void
.end method
