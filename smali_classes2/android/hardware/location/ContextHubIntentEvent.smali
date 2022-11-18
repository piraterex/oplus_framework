.class public Landroid/hardware/location/ContextHubIntentEvent;
.super Ljava/lang/Object;
.source "ContextHubIntentEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mClientAuthorizationState:I

.field private final blacklist mContextHubInfo:Landroid/hardware/location/ContextHubInfo;

.field private final blacklist mEventType:I

.field private final blacklist mNanoAppAbortCode:I

.field private final blacklist mNanoAppId:J

.field private final blacklist mNanoAppMessage:Landroid/hardware/location/NanoAppMessage;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/location/ContextHubInfo;I)V
    .locals 8
    .param p1, "contextHubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p2, "eventType"    # I

    .line 62
    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Landroid/hardware/location/ContextHubIntentEvent;-><init>(Landroid/hardware/location/ContextHubInfo;IJLandroid/hardware/location/NanoAppMessage;II)V

    .line 64
    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/location/ContextHubInfo;IJ)V
    .locals 8
    .param p1, "contextHubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p2, "eventType"    # I
    .param p3, "nanoAppId"    # J

    .line 69
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/hardware/location/ContextHubIntentEvent;-><init>(Landroid/hardware/location/ContextHubInfo;IJLandroid/hardware/location/NanoAppMessage;II)V

    .line 71
    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/location/ContextHubInfo;IJI)V
    .locals 8
    .param p1, "contextHubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p2, "eventType"    # I
    .param p3, "nanoAppId"    # J
    .param p5, "nanoAppAbortCode"    # I

    .line 83
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/hardware/location/ContextHubIntentEvent;-><init>(Landroid/hardware/location/ContextHubInfo;IJLandroid/hardware/location/NanoAppMessage;II)V

    .line 85
    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/location/ContextHubInfo;IJLandroid/hardware/location/NanoAppMessage;)V
    .locals 8
    .param p1, "contextHubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p2, "eventType"    # I
    .param p3, "nanoAppId"    # J
    .param p5, "nanoAppMessage"    # Landroid/hardware/location/NanoAppMessage;

    .line 76
    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Landroid/hardware/location/ContextHubIntentEvent;-><init>(Landroid/hardware/location/ContextHubInfo;IJLandroid/hardware/location/NanoAppMessage;II)V

    .line 78
    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/location/ContextHubInfo;IJLandroid/hardware/location/NanoAppMessage;II)V
    .locals 0
    .param p1, "contextHubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p2, "eventType"    # I
    .param p3, "nanoAppId"    # J
    .param p5, "nanoAppMessage"    # Landroid/hardware/location/NanoAppMessage;
    .param p6, "nanoAppAbortCode"    # I
    .param p7, "clientAuthorizationState"    # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/hardware/location/ContextHubIntentEvent;->mContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    .line 53
    iput p2, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    .line 54
    iput-wide p3, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppId:J

    .line 55
    iput-object p5, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppMessage:Landroid/hardware/location/NanoAppMessage;

    .line 56
    iput p6, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppAbortCode:I

    .line 57
    iput p7, p0, Landroid/hardware/location/ContextHubIntentEvent;->mClientAuthorizationState:I

    .line 58
    return-void
.end method

.method public static whitelist fromIntent(Landroid/content/Intent;)Landroid/hardware/location/ContextHubIntentEvent;
    .locals 14
    .param p0, "intent"    # Landroid/content/Intent;

    .line 98
    const-string v0, "Intent cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    const-string v0, "android.hardware.location.extra.CONTEXT_HUB_INFO"

    invoke-static {p0, v0}, Landroid/hardware/location/ContextHubIntentEvent;->hasExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/ContextHubInfo;

    .line 102
    .local v0, "info":Landroid/hardware/location/ContextHubInfo;
    if-eqz v0, :cond_4

    .line 106
    const-string v1, "android.hardware.location.extra.EVENT_TYPE"

    invoke-static {p0, v1}, Landroid/hardware/location/ContextHubIntentEvent;->getIntExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v9

    .line 108
    .local v9, "eventType":I
    packed-switch v9, :pswitch_data_0

    .line 145
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown intent event type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :pswitch_0
    new-instance v1, Landroid/hardware/location/ContextHubIntentEvent;

    invoke-direct {v1, v0, v9}, Landroid/hardware/location/ContextHubIntentEvent;-><init>(Landroid/hardware/location/ContextHubInfo;I)V

    .line 142
    .local v1, "event":Landroid/hardware/location/ContextHubIntentEvent;
    goto/16 :goto_0

    .line 116
    .end local v1    # "event":Landroid/hardware/location/ContextHubIntentEvent;
    :pswitch_1
    const-string v1, "android.hardware.location.extra.NANOAPP_ID"

    invoke-static {p0, v1}, Landroid/hardware/location/ContextHubIntentEvent;->getLongExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)J

    move-result-wide v10

    .line 117
    .local v10, "nanoAppId":J
    const/4 v1, 0x5

    if-ne v9, v1, :cond_1

    .line 118
    const-string v1, "android.hardware.location.extra.MESSAGE"

    invoke-static {p0, v1}, Landroid/hardware/location/ContextHubIntentEvent;->hasExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)V

    .line 119
    nop

    .line 120
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/hardware/location/NanoAppMessage;

    .line 121
    .local v7, "message":Landroid/hardware/location/NanoAppMessage;
    if-eqz v7, :cond_0

    .line 125
    new-instance v8, Landroid/hardware/location/ContextHubIntentEvent;

    move-object v1, v8

    move-object v2, v0

    move v3, v9

    move-wide v4, v10

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Landroid/hardware/location/ContextHubIntentEvent;-><init>(Landroid/hardware/location/ContextHubInfo;IJLandroid/hardware/location/NanoAppMessage;)V

    .line 126
    .end local v7    # "message":Landroid/hardware/location/NanoAppMessage;
    .restart local v1    # "event":Landroid/hardware/location/ContextHubIntentEvent;
    goto :goto_0

    .line 122
    .end local v1    # "event":Landroid/hardware/location/ContextHubIntentEvent;
    .restart local v7    # "message":Landroid/hardware/location/NanoAppMessage;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "NanoAppMessage extra was null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    .end local v7    # "message":Landroid/hardware/location/NanoAppMessage;
    :cond_1
    const/4 v1, 0x4

    if-ne v9, v1, :cond_2

    .line 127
    const-string v1, "android.hardware.location.extra.NANOAPP_ABORT_CODE"

    invoke-static {p0, v1}, Landroid/hardware/location/ContextHubIntentEvent;->getIntExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v7

    .line 129
    .local v7, "nanoAppAbortCode":I
    new-instance v8, Landroid/hardware/location/ContextHubIntentEvent;

    move-object v1, v8

    move-object v2, v0

    move v3, v9

    move-wide v4, v10

    move v6, v7

    invoke-direct/range {v1 .. v6}, Landroid/hardware/location/ContextHubIntentEvent;-><init>(Landroid/hardware/location/ContextHubInfo;IJI)V

    .line 130
    .end local v7    # "nanoAppAbortCode":I
    .restart local v1    # "event":Landroid/hardware/location/ContextHubIntentEvent;
    goto :goto_0

    .end local v1    # "event":Landroid/hardware/location/ContextHubIntentEvent;
    :cond_2
    const/4 v1, 0x7

    if-ne v9, v1, :cond_3

    .line 131
    const-string v1, "android.hardware.location.extra.CLIENT_AUTHORIZATION_STATE"

    invoke-static {p0, v1}, Landroid/hardware/location/ContextHubIntentEvent;->getIntExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v12

    .line 133
    .local v12, "authState":I
    new-instance v13, Landroid/hardware/location/ContextHubIntentEvent;

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v1, v13

    move-object v2, v0

    move v3, v9

    move-wide v4, v10

    move v8, v12

    invoke-direct/range {v1 .. v8}, Landroid/hardware/location/ContextHubIntentEvent;-><init>(Landroid/hardware/location/ContextHubInfo;IJLandroid/hardware/location/NanoAppMessage;II)V

    .line 135
    .end local v12    # "authState":I
    .restart local v1    # "event":Landroid/hardware/location/ContextHubIntentEvent;
    goto :goto_0

    .line 136
    .end local v1    # "event":Landroid/hardware/location/ContextHubIntentEvent;
    :cond_3
    new-instance v1, Landroid/hardware/location/ContextHubIntentEvent;

    invoke-direct {v1, v0, v9, v10, v11}, Landroid/hardware/location/ContextHubIntentEvent;-><init>(Landroid/hardware/location/ContextHubInfo;IJ)V

    .line 138
    .restart local v1    # "event":Landroid/hardware/location/ContextHubIntentEvent;
    nop

    .line 148
    .end local v10    # "nanoAppId":J
    :goto_0
    return-object v1

    .line 103
    .end local v1    # "event":Landroid/hardware/location/ContextHubIntentEvent;
    .end local v9    # "eventType":I
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ContextHubInfo extra was null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist getIntExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "extra"    # Ljava/lang/String;

    .line 285
    invoke-static {p0, p1}, Landroid/hardware/location/ContextHubIntentEvent;->hasExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)V

    .line 286
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static blacklist getLongExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)J
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "extra"    # Ljava/lang/String;

    .line 290
    invoke-static {p0, p1}, Landroid/hardware/location/ContextHubIntentEvent;->hasExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)V

    .line 291
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist hasExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "extra"    # Ljava/lang/String;

    .line 279
    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    return-void

    .line 280
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent did not have extra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .line 246
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 247
    return v0

    .line 250
    :cond_0
    const/4 v1, 0x0

    .line 251
    .local v1, "isEqual":Z
    instance-of v2, p1, Landroid/hardware/location/ContextHubIntentEvent;

    if-eqz v2, :cond_8

    .line 252
    move-object v2, p1

    check-cast v2, Landroid/hardware/location/ContextHubIntentEvent;

    .line 253
    .local v2, "other":Landroid/hardware/location/ContextHubIntentEvent;
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubIntentEvent;->getEventType()I

    move-result v3

    iget v4, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    if-ne v3, v4, :cond_8

    .line 254
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubIntentEvent;->getContextHubInfo()Landroid/hardware/location/ContextHubInfo;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/ContextHubIntentEvent;->mContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {v3, v4}, Landroid/hardware/location/ContextHubInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 255
    const/4 v1, 0x1

    .line 257
    :try_start_0
    iget v3, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v4, 0x6

    const/4 v5, 0x0

    if-eq v3, v4, :cond_2

    .line 258
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubIntentEvent;->getNanoAppId()J

    move-result-wide v3

    iget-wide v6, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppId:J

    cmp-long v3, v3, v6

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    and-int/2addr v1, v3

    .line 260
    :cond_2
    iget v3, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 261
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubIntentEvent;->getNanoAppAbortCode()I

    move-result v3

    iget v4, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppAbortCode:I

    if-ne v3, v4, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_1
    and-int/2addr v1, v3

    .line 263
    :cond_4
    iget v3, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    .line 264
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubIntentEvent;->getNanoAppMessage()Landroid/hardware/location/NanoAppMessage;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppMessage:Landroid/hardware/location/NanoAppMessage;

    invoke-virtual {v3, v4}, Landroid/hardware/location/NanoAppMessage;->equals(Ljava/lang/Object;)Z

    move-result v3

    and-int/2addr v1, v3

    .line 266
    :cond_5
    iget v3, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_7

    .line 267
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubIntentEvent;->getClientAuthorizationState()I

    move-result v3

    iget v4, p0, Landroid/hardware/location/ContextHubIntentEvent;->mClientAuthorizationState:I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v4, :cond_6

    goto :goto_2

    :cond_6
    move v0, v5

    :goto_2
    and-int/2addr v0, v1

    move v1, v0

    .line 271
    :cond_7
    goto :goto_3

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const/4 v1, 0x0

    .line 275
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    .end local v2    # "other":Landroid/hardware/location/ContextHubIntentEvent;
    :cond_8
    :goto_3
    return v1
.end method

.method public whitelist getClientAuthorizationState()I
    .locals 3

    .line 214
    iget v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 219
    iget v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mClientAuthorizationState:I

    return v0

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot invoke getClientAuthorizationState() on non-authorization event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getContextHubInfo()Landroid/hardware/location/ContextHubInfo;
    .locals 1

    .line 164
    iget-object v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    return-object v0
.end method

.method public whitelist getEventType()I
    .locals 1

    .line 156
    iget v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    return v0
.end method

.method public whitelist getNanoAppAbortCode()I
    .locals 3

    .line 186
    iget v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 190
    iget v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppAbortCode:I

    return v0

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot invoke getNanoAppAbortCode() on non-abort event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getNanoAppId()J
    .locals 2

    .line 173
    iget v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 177
    iget-wide v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppId:J

    return-wide v0

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot invoke getNanoAppId() on Context Hub reset event"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getNanoAppMessage()Landroid/hardware/location/NanoAppMessage;
    .locals 3

    .line 200
    iget v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppMessage:Landroid/hardware/location/NanoAppMessage;

    return-object v0

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot invoke getNanoAppMessage() on non-message event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContextHubIntentEvent[eventType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contextHubId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/location/ContextHubIntentEvent;->mContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    .line 226
    invoke-virtual {v1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "out":Ljava/lang/String;
    iget v1, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nanoAppId = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    :cond_0
    iget v1, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nanoAppAbortCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppAbortCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    :cond_1
    iget v1, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nanoAppMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppMessage:Landroid/hardware/location/NanoAppMessage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    :cond_2
    iget v1, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", clientAuthState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/ContextHubIntentEvent;->mClientAuthorizationState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
