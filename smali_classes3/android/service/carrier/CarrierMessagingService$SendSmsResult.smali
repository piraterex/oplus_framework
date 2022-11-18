.class public final Landroid/service/carrier/CarrierMessagingService$SendSmsResult;
.super Ljava/lang/Object;
.source "CarrierMessagingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/CarrierMessagingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SendSmsResult"
.end annotation


# instance fields
.field private final greylist-max-o mMessageRef:I

.field private final greylist-max-o mSendStatus:I


# direct methods
.method public constructor whitelist <init>(II)V
    .locals 0
    .param p1, "sendStatus"    # I
    .param p2, "messageRef"    # I

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    iput p1, p0, Landroid/service/carrier/CarrierMessagingService$SendSmsResult;->mSendStatus:I

    .line 421
    iput p2, p0, Landroid/service/carrier/CarrierMessagingService$SendSmsResult;->mMessageRef:I

    .line 422
    return-void
.end method


# virtual methods
.method public whitelist getMessageRef()I
    .locals 1

    .line 430
    iget v0, p0, Landroid/service/carrier/CarrierMessagingService$SendSmsResult;->mMessageRef:I

    return v0
.end method

.method public whitelist getSendStatus()I
    .locals 1

    .line 439
    iget v0, p0, Landroid/service/carrier/CarrierMessagingService$SendSmsResult;->mSendStatus:I

    return v0
.end method
