.class public final Landroid/app/Notification$TvExtender;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/app/Notification$Extender;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TvExtender"
.end annotation


# static fields
.field private static final greylist-max-o EXTRA_CHANNEL_ID:Ljava/lang/String; = "channel_id"

.field static final greylist-max-o EXTRA_CONTENT_INTENT:Ljava/lang/String; = "content_intent"

.field static final greylist-max-o EXTRA_DELETE_INTENT:Ljava/lang/String; = "delete_intent"

.field private static final greylist-max-o EXTRA_FLAGS:Ljava/lang/String; = "flags"

.field private static final greylist-max-o EXTRA_SUPPRESS_SHOW_OVER_APPS:Ljava/lang/String; = "suppressShowOverApps"

.field private static final greylist-max-o EXTRA_TV_EXTENDER:Ljava/lang/String; = "android.tv.EXTENSIONS"

.field private static final greylist-max-o FLAG_AVAILABLE_ON_TV:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TvExtender"


# instance fields
.field private greylist-max-o mChannelId:Ljava/lang/String;

.field private greylist-max-o mContentIntent:Landroid/app/PendingIntent;

.field private greylist-max-o mDeleteIntent:Landroid/app/PendingIntent;

.field private greylist-max-o mFlags:I

.field private greylist-max-o mSuppressShowOverApps:Z


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 12231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12232
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$TvExtender;->mFlags:I

    .line 12233
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/Notification;)V
    .locals 3
    .param p1, "notif"    # Landroid/app/Notification;

    .line 12240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12241
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 12242
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.tv.EXTENSIONS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 12243
    .local v0, "bundle":Landroid/os/Bundle;
    :goto_0
    if-eqz v0, :cond_1

    .line 12244
    const-string v1, "flags"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$TvExtender;->mFlags:I

    .line 12245
    const-string v1, "channel_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$TvExtender;->mChannelId:Ljava/lang/String;

    .line 12246
    const-string/jumbo v1, "suppressShowOverApps"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Notification$TvExtender;->mSuppressShowOverApps:Z

    .line 12247
    const-class v1, Landroid/app/PendingIntent;

    const-string v2, "content_intent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification$TvExtender;->mContentIntent:Landroid/app/PendingIntent;

    .line 12248
    const-class v1, Landroid/app/PendingIntent;

    const-string v2, "delete_intent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification$TvExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 12250
    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist extend(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .line 12259
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12261
    .local v0, "bundle":Landroid/os/Bundle;
    iget v1, p0, Landroid/app/Notification$TvExtender;->mFlags:I

    const-string v2, "flags"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12262
    iget-object v1, p0, Landroid/app/Notification$TvExtender;->mChannelId:Ljava/lang/String;

    const-string v2, "channel_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12263
    iget-boolean v1, p0, Landroid/app/Notification$TvExtender;->mSuppressShowOverApps:Z

    const-string/jumbo v2, "suppressShowOverApps"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12264
    iget-object v1, p0, Landroid/app/Notification$TvExtender;->mContentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 12265
    const-string v2, "content_intent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12268
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$TvExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 12269
    const-string v2, "delete_intent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12272
    :cond_1
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.tv.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 12273
    return-object p1
.end method

.method public greylist getChannel()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12307
    iget-object v0, p0, Landroid/app/Notification$TvExtender;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getChannelId()Ljava/lang/String;
    .locals 1

    .line 12314
    iget-object v0, p0, Landroid/app/Notification$TvExtender;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getContentIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 12334
    iget-object v0, p0, Landroid/app/Notification$TvExtender;->mContentIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getDeleteIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 12354
    iget-object v0, p0, Landroid/app/Notification$TvExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getSuppressShowOverApps()Z
    .locals 1

    .line 12371
    iget-boolean v0, p0, Landroid/app/Notification$TvExtender;->mSuppressShowOverApps:Z

    return v0
.end method

.method public whitelist isAvailableOnTv()Z
    .locals 2

    .line 12281
    iget v0, p0, Landroid/app/Notification$TvExtender;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist setChannel(Ljava/lang/String;)Landroid/app/Notification$TvExtender;
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;

    .line 12290
    iput-object p1, p0, Landroid/app/Notification$TvExtender;->mChannelId:Ljava/lang/String;

    .line 12291
    return-object p0
.end method

.method public whitelist setChannelId(Ljava/lang/String;)Landroid/app/Notification$TvExtender;
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;

    .line 12300
    iput-object p1, p0, Landroid/app/Notification$TvExtender;->mChannelId:Ljava/lang/String;

    .line 12301
    return-object p0
.end method

.method public whitelist setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$TvExtender;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 12323
    iput-object p1, p0, Landroid/app/Notification$TvExtender;->mContentIntent:Landroid/app/PendingIntent;

    .line 12324
    return-object p0
.end method

.method public whitelist setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$TvExtender;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 12343
    iput-object p1, p0, Landroid/app/Notification$TvExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 12344
    return-object p0
.end method

.method public whitelist setSuppressShowOverApps(Z)Landroid/app/Notification$TvExtender;
    .locals 0
    .param p1, "suppress"    # Z

    .line 12362
    iput-boolean p1, p0, Landroid/app/Notification$TvExtender;->mSuppressShowOverApps:Z

    .line 12363
    return-object p0
.end method
