.class public Landroid/app/BroadcastOptions;
.super Landroid/app/ComponentOptions;
.source "BroadcastOptions.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final blacklist CHANGE_ALWAYS_DISABLED:J = 0xc916a0fL

.field public static final blacklist CHANGE_ALWAYS_ENABLED:J = 0xc82a338L

.field public static final blacklist CHANGE_INVALID:J = -0x8000000000000000L

.field private static final blacklist KEY_ALLOW_BACKGROUND_ACTIVITY_STARTS:Ljava/lang/String; = "android:broadcast.allowBackgroundActivityStarts"

.field private static final greylist-max-o KEY_DONT_SEND_TO_RESTRICTED_APPS:Ljava/lang/String; = "android:broadcast.dontSendToRestrictedApps"

.field private static final blacklist KEY_ID_FOR_RESPONSE_EVENT:Ljava/lang/String; = "android:broadcast.idForResponseEvent"

.field private static final greylist-max-o KEY_MAX_MANIFEST_RECEIVER_API_LEVEL:Ljava/lang/String; = "android:broadcast.maxManifestReceiverApiLevel"

.field private static final greylist-max-o KEY_MIN_MANIFEST_RECEIVER_API_LEVEL:Ljava/lang/String; = "android:broadcast.minManifestReceiverApiLevel"

.field public static final blacklist KEY_REQUIRE_ALL_OF_PERMISSIONS:Ljava/lang/String; = "android:broadcast.requireAllOfPermissions"

.field private static final blacklist KEY_REQUIRE_COMPAT_CHANGE_ENABLED:Ljava/lang/String; = "android:broadcast.requireCompatChangeEnabled"

.field private static final blacklist KEY_REQUIRE_COMPAT_CHANGE_ID:Ljava/lang/String; = "android:broadcast.requireCompatChangeId"

.field public static final blacklist KEY_REQUIRE_NONE_OF_PERMISSIONS:Ljava/lang/String; = "android:broadcast.requireNoneOfPermissions"

.field private static final blacklist KEY_TEMPORARY_APP_ALLOWLIST_DURATION:Ljava/lang/String; = "android:broadcast.temporaryAppAllowlistDuration"

.field private static final blacklist KEY_TEMPORARY_APP_ALLOWLIST_REASON:Ljava/lang/String; = "android:broadcast.temporaryAppAllowlistReason"

.field private static final blacklist KEY_TEMPORARY_APP_ALLOWLIST_REASON_CODE:Ljava/lang/String; = "android:broadcast.temporaryAppAllowlistReasonCode"

.field private static final blacklist KEY_TEMPORARY_APP_ALLOWLIST_TYPE:Ljava/lang/String; = "android:broadcast.temporaryAppAllowlistType"

.field public static final blacklist TEMPORARY_WHITELIST_TYPE_FOREGROUND_SERVICE_ALLOWED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TEMPORARY_WHITELIST_TYPE_FOREGROUND_SERVICE_NOT_ALLOWED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private blacklist mAllowBackgroundActivityStarts:Z

.field private greylist-max-o mDontSendToRestrictedApps:Z

.field private blacklist mIdForResponseEvent:J

.field private greylist-max-o mMaxManifestReceiverApiLevel:I

.field private greylist-max-o mMinManifestReceiverApiLevel:I

.field private blacklist mRequireAllOfPermissions:[Ljava/lang/String;

.field private blacklist mRequireCompatChangeEnabled:Z

.field private blacklist mRequireCompatChangeId:J

.field private blacklist mRequireNoneOfPermissions:[Ljava/lang/String;

.field private blacklist mTemporaryAppAllowlistDuration:J

.field private blacklist mTemporaryAppAllowlistReason:Ljava/lang/String;

.field private blacklist mTemporaryAppAllowlistReasonCode:I

.field private blacklist mTemporaryAppAllowlistType:I


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 2

    .line 181
    invoke-direct {p0}, Landroid/app/ComponentOptions;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    .line 49
    const/16 v1, 0x2710

    iput v1, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    .line 50
    iput-boolean v0, p0, Landroid/app/BroadcastOptions;->mDontSendToRestrictedApps:Z

    .line 54
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeId:J

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeEnabled:Z

    .line 182
    invoke-direct {p0}, Landroid/app/BroadcastOptions;->resetTemporaryAppAllowlist()V

    .line 183
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "opts"    # Landroid/os/Bundle;

    .line 188
    invoke-direct {p0, p1}, Landroid/app/ComponentOptions;-><init>(Landroid/os/Bundle;)V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    .line 49
    const/16 v1, 0x2710

    iput v1, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    .line 50
    iput-boolean v0, p0, Landroid/app/BroadcastOptions;->mDontSendToRestrictedApps:Z

    .line 54
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeId:J

    .line 55
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeEnabled:Z

    .line 190
    const-string v5, "android:broadcast.temporaryAppAllowlistDuration"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 191
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistDuration:J

    .line 192
    const-string v5, "android:broadcast.temporaryAppAllowlistType"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistType:I

    .line 193
    const-string v5, "android:broadcast.temporaryAppAllowlistReasonCode"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReasonCode:I

    .line 195
    const-string v5, "android:broadcast.temporaryAppAllowlistReason"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReason:Ljava/lang/String;

    goto :goto_0

    .line 197
    :cond_0
    invoke-direct {p0}, Landroid/app/BroadcastOptions;->resetTemporaryAppAllowlist()V

    .line 199
    :goto_0
    const-string v5, "android:broadcast.minManifestReceiverApiLevel"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    .line 200
    const-string v5, "android:broadcast.maxManifestReceiverApiLevel"

    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    .line 202
    const-string v1, "android:broadcast.dontSendToRestrictedApps"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/BroadcastOptions;->mDontSendToRestrictedApps:Z

    .line 203
    const-string v1, "android:broadcast.allowBackgroundActivityStarts"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/BroadcastOptions;->mAllowBackgroundActivityStarts:Z

    .line 205
    const-string v0, "android:broadcast.requireAllOfPermissions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/BroadcastOptions;->mRequireAllOfPermissions:[Ljava/lang/String;

    .line 206
    const-string v0, "android:broadcast.requireNoneOfPermissions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/BroadcastOptions;->mRequireNoneOfPermissions:[Ljava/lang/String;

    .line 207
    const-string v0, "android:broadcast.requireCompatChangeId"

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeId:J

    .line 208
    const-string v0, "android:broadcast.requireCompatChangeEnabled"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeEnabled:Z

    .line 209
    const-string v0, "android:broadcast.idForResponseEvent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/BroadcastOptions;->mIdForResponseEvent:J

    .line 210
    return-void
.end method

.method private blacklist isTemporaryAppAllowlistSet()Z
    .locals 4

    .line 258
    iget-wide v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist makeBasic()Landroid/app/BroadcastOptions;
    .locals 1

    .line 176
    new-instance v0, Landroid/app/BroadcastOptions;

    invoke-direct {v0}, Landroid/app/BroadcastOptions;-><init>()V

    .line 177
    .local v0, "opts":Landroid/app/BroadcastOptions;
    return-object v0
.end method

.method private blacklist resetTemporaryAppAllowlist()V
    .locals 2

    .line 264
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistDuration:J

    .line 265
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistType:I

    .line 266
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReasonCode:I

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReason:Ljava/lang/String;

    .line 268
    return-void
.end method


# virtual methods
.method public blacklist allowsBackgroundActivityStarts()Z
    .locals 1

    .line 429
    iget-boolean v0, p0, Landroid/app/BroadcastOptions;->mAllowBackgroundActivityStarts:Z

    return v0
.end method

.method public whitelist clearRequireCompatChange()V
    .locals 2

    .line 497
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeId:J

    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeEnabled:Z

    .line 499
    return-void
.end method

.method public blacklist getIdForResponseEvent()J
    .locals 2

    .line 543
    iget-wide v0, p0, Landroid/app/BroadcastOptions;->mIdForResponseEvent:J

    return-wide v0
.end method

.method public greylist-max-o getMaxManifestReceiverApiLevel()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 395
    iget v0, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    return v0
.end method

.method public greylist-max-o getMinManifestReceiverApiLevel()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 357
    iget v0, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    return v0
.end method

.method public blacklist getRequireCompatChangeId()J
    .locals 2

    .line 503
    iget-wide v0, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeId:J

    return-wide v0
.end method

.method public blacklist getTemporaryAppAllowlistDuration()J
    .locals 2

    .line 296
    iget-wide v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistDuration:J

    return-wide v0
.end method

.method public blacklist getTemporaryAppAllowlistReason()Ljava/lang/String;
    .locals 1

    .line 323
    iget-object v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReason:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTemporaryAppAllowlistReasonCode()I
    .locals 1

    .line 314
    iget v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReasonCode:I

    return v0
.end method

.method public blacklist getTemporaryAppAllowlistType()I
    .locals 1

    .line 305
    iget v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistType:I

    return v0
.end method

.method public greylist-max-o isDontSendToRestrictedApps()Z
    .locals 1

    .line 412
    iget-boolean v0, p0, Landroid/app/BroadcastOptions;->mDontSendToRestrictedApps:Z

    return v0
.end method

.method public whitelist isPendingIntentBackgroundActivityLaunchAllowed()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 287
    invoke-super {p0}, Landroid/app/ComponentOptions;->isPendingIntentBackgroundActivityLaunchAllowed()Z

    move-result v0

    return v0
.end method

.method public whitelist recordResponseEventWhileInBackground(J)V
    .locals 0
    .param p1, "id"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 537
    iput-wide p1, p0, Landroid/app/BroadcastOptions;->mIdForResponseEvent:J

    .line 538
    return-void
.end method

.method public whitelist setBackgroundActivityStartsAllowed(Z)V
    .locals 0
    .param p1, "allowBackgroundActivityStarts"    # Z

    .line 421
    iput-boolean p1, p0, Landroid/app/BroadcastOptions;->mAllowBackgroundActivityStarts:Z

    .line 422
    return-void
.end method

.method public whitelist setDontSendToRestrictedApps(Z)V
    .locals 0
    .param p1, "dontSendToRestrictedApps"    # Z

    .line 404
    iput-boolean p1, p0, Landroid/app/BroadcastOptions;->mDontSendToRestrictedApps:Z

    .line 405
    return-void
.end method

.method public greylist-max-o setMaxManifestReceiverApiLevel(I)V
    .locals 0
    .param p1, "apiLevel"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 377
    iput p1, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    .line 378
    return-void
.end method

.method public greylist-max-o setMinManifestReceiverApiLevel(I)V
    .locals 0
    .param p1, "apiLevel"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 341
    iput p1, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    .line 342
    return-void
.end method

.method public whitelist setPendingIntentBackgroundActivityLaunchAllowed(Z)V
    .locals 0
    .param p1, "allowed"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 277
    invoke-super {p0, p1}, Landroid/app/ComponentOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 278
    return-void
.end method

.method public whitelist setRequireAllOfPermissions([Ljava/lang/String;)V
    .locals 0
    .param p1, "requiredPermissions"    # [Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 448
    iput-object p1, p0, Landroid/app/BroadcastOptions;->mRequireAllOfPermissions:[Ljava/lang/String;

    .line 449
    return-void
.end method

.method public whitelist setRequireCompatChange(JZ)V
    .locals 0
    .param p1, "changeId"    # J
    .param p3, "enabled"    # Z

    .line 488
    iput-wide p1, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeId:J

    .line 489
    iput-boolean p3, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeEnabled:Z

    .line 490
    return-void
.end method

.method public whitelist setRequireNoneOfPermissions([Ljava/lang/String;)V
    .locals 0
    .param p1, "excludedPermissions"    # [Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 467
    iput-object p1, p0, Landroid/app/BroadcastOptions;->mRequireNoneOfPermissions:[Ljava/lang/String;

    .line 468
    return-void
.end method

.method public whitelist setTemporaryAppAllowlist(JIILjava/lang/String;)V
    .locals 1
    .param p1, "duration"    # J
    .param p3, "type"    # I
    .param p4, "reasonCode"    # I
    .param p5, "reason"    # Ljava/lang/String;

    .line 247
    iput-wide p1, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistDuration:J

    .line 248
    iput p3, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistType:I

    .line 249
    iput p4, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReasonCode:I

    .line 250
    iput-object p5, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReason:Ljava/lang/String;

    .line 252
    invoke-direct {p0}, Landroid/app/BroadcastOptions;->isTemporaryAppAllowlistSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    invoke-direct {p0}, Landroid/app/BroadcastOptions;->resetTemporaryAppAllowlist()V

    .line 255
    :cond_0
    return-void
.end method

.method public whitelist setTemporaryAppWhitelistDuration(J)V
    .locals 6
    .param p1, "duration"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 226
    return-void
.end method

.method public blacklist testRequireCompatChange(I)Z
    .locals 4
    .param p1, "uid"    # I

    .line 514
    iget-wide v0, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeId:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 515
    invoke-static {v0, v1, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    iget-boolean v1, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeEnabled:Z

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 518
    :cond_1
    return v3
.end method

.method public whitelist toBundle()Landroid/os/Bundle;
    .locals 5

    .line 556
    invoke-super {p0}, Landroid/app/ComponentOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 557
    .local v0, "b":Landroid/os/Bundle;
    invoke-direct {p0}, Landroid/app/BroadcastOptions;->isTemporaryAppAllowlistSet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    iget-wide v1, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistDuration:J

    const-string v3, "android:broadcast.temporaryAppAllowlistDuration"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 559
    iget v1, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistType:I

    const-string v2, "android:broadcast.temporaryAppAllowlistType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 560
    iget v1, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReasonCode:I

    const-string v2, "android:broadcast.temporaryAppAllowlistReasonCode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 561
    iget-object v1, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReason:Ljava/lang/String;

    const-string v2, "android:broadcast.temporaryAppAllowlistReason"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :cond_0
    iget v1, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    if-eqz v1, :cond_1

    .line 564
    const-string v2, "android:broadcast.minManifestReceiverApiLevel"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 566
    :cond_1
    iget v1, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    const/16 v2, 0x2710

    if-eq v1, v2, :cond_2

    .line 567
    const-string v2, "android:broadcast.maxManifestReceiverApiLevel"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 569
    :cond_2
    iget-boolean v1, p0, Landroid/app/BroadcastOptions;->mDontSendToRestrictedApps:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 570
    const-string v1, "android:broadcast.dontSendToRestrictedApps"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 572
    :cond_3
    iget-boolean v1, p0, Landroid/app/BroadcastOptions;->mAllowBackgroundActivityStarts:Z

    if-eqz v1, :cond_4

    .line 573
    const-string v1, "android:broadcast.allowBackgroundActivityStarts"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 575
    :cond_4
    iget-object v1, p0, Landroid/app/BroadcastOptions;->mRequireAllOfPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 576
    const-string v2, "android:broadcast.requireAllOfPermissions"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 578
    :cond_5
    iget-object v1, p0, Landroid/app/BroadcastOptions;->mRequireNoneOfPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 579
    const-string v2, "android:broadcast.requireNoneOfPermissions"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 581
    :cond_6
    iget-wide v1, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeId:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    if-eqz v3, :cond_7

    .line 582
    const-string v3, "android:broadcast.requireCompatChangeId"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 583
    iget-boolean v1, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeEnabled:Z

    const-string v2, "android:broadcast.requireCompatChangeEnabled"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 585
    :cond_7
    iget-wide v1, p0, Landroid/app/BroadcastOptions;->mIdForResponseEvent:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_8

    .line 586
    const-string v3, "android:broadcast.idForResponseEvent"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 588
    :cond_8
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    goto :goto_0

    :cond_9
    move-object v1, v0

    :goto_0
    return-object v1
.end method
