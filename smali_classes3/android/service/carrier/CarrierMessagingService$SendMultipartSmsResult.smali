.class public final Landroid/service/carrier/CarrierMessagingService$SendMultipartSmsResult;
.super Ljava/lang/Object;
.source "CarrierMessagingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/CarrierMessagingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SendMultipartSmsResult"
.end annotation


# instance fields
.field private final greylist-max-o mMessageRefs:[I

.field private final greylist-max-o mSendStatus:I


# direct methods
.method public constructor whitelist <init>(I[I)V
    .locals 0
    .param p1, "sendStatus"    # I
    .param p2, "messageRefs"    # [I

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput p1, p0, Landroid/service/carrier/CarrierMessagingService$SendMultipartSmsResult;->mSendStatus:I

    .line 462
    iput-object p2, p0, Landroid/service/carrier/CarrierMessagingService$SendMultipartSmsResult;->mMessageRefs:[I

    .line 463
    return-void
.end method


# virtual methods
.method public whitelist getMessageRefs()[I
    .locals 1

    .line 471
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingService$SendMultipartSmsResult;->mMessageRefs:[I

    return-object v0
.end method

.method public whitelist getSendStatus()I
    .locals 1

    .line 480
    iget v0, p0, Landroid/service/carrier/CarrierMessagingService$SendMultipartSmsResult;->mSendStatus:I

    return v0
.end method
