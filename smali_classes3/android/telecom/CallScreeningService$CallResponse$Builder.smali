.class public Landroid/telecom/CallScreeningService$CallResponse$Builder;
.super Ljava/lang/Object;
.source "CallScreeningService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallScreeningService$CallResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCallComposerAttachmentsToShow:I

.field private greylist-max-o mShouldDisallowCall:Z

.field private greylist-max-o mShouldRejectCall:Z

.field private blacklist mShouldScreenCallViaAudioProcessing:Z

.field private blacklist mShouldSilenceCall:Z

.field private greylist-max-o mShouldSkipCallLog:Z

.field private greylist-max-o mShouldSkipNotification:Z


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    const/4 v0, -0x1

    iput v0, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mCallComposerAttachmentsToShow:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telecom/CallScreeningService$CallResponse;
    .locals 10

    .line 576
    new-instance v9, Landroid/telecom/CallScreeningService$CallResponse;

    iget-boolean v1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldDisallowCall:Z

    iget-boolean v2, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldRejectCall:Z

    iget-boolean v3, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldSilenceCall:Z

    iget-boolean v4, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldSkipCallLog:Z

    iget-boolean v5, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldSkipNotification:Z

    iget-boolean v6, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldScreenCallViaAudioProcessing:Z

    iget v7, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mCallComposerAttachmentsToShow:I

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/telecom/CallScreeningService$CallResponse;-><init>(ZZZZZZILandroid/telecom/CallScreeningService$CallResponse-IA;)V

    return-object v9
.end method

.method public whitelist setCallComposerAttachmentsToShow(I)Landroid/telecom/CallScreeningService$CallResponse$Builder;
    .locals 2
    .param p1, "callComposerAttachmentsToShow"    # I

    .line 562
    if-gez p1, :cond_0

    .line 563
    return-object p0

    .line 566
    :cond_0
    and-int/lit8 v0, p1, 0x10

    if-nez v0, :cond_1

    .line 571
    iput p1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mCallComposerAttachmentsToShow:I

    .line 572
    return-object p0

    .line 568
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attachment types must match the ones defined in CallResponse"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDisallowCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;
    .locals 0
    .param p1, "shouldDisallowCall"    # Z

    .line 463
    iput-boolean p1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldDisallowCall:Z

    .line 464
    return-object p0
.end method

.method public whitelist setRejectCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;
    .locals 0
    .param p1, "shouldRejectCall"    # Z

    .line 472
    iput-boolean p1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldRejectCall:Z

    .line 473
    return-object p0
.end method

.method public whitelist setShouldScreenCallViaAudioProcessing(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;
    .locals 0
    .param p1, "shouldScreenCallViaAudioProcessing"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 539
    iput-boolean p1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldScreenCallViaAudioProcessing:Z

    .line 540
    return-object p0
.end method

.method public whitelist setSilenceCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;
    .locals 0
    .param p1, "shouldSilenceCall"    # Z

    .line 487
    iput-boolean p1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldSilenceCall:Z

    .line 488
    return-object p0
.end method

.method public whitelist setSkipCallLog(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;
    .locals 0
    .param p1, "shouldSkipCallLog"    # Z

    .line 500
    iput-boolean p1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldSkipCallLog:Z

    .line 501
    return-object p0
.end method

.method public whitelist setSkipNotification(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;
    .locals 0
    .param p1, "shouldSkipNotification"    # Z

    .line 509
    iput-boolean p1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldSkipNotification:Z

    .line 510
    return-object p0
.end method
