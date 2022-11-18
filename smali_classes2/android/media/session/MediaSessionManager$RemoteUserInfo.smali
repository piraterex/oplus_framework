.class public final Landroid/media/session/MediaSessionManager$RemoteUserInfo;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemoteUserInfo"
.end annotation


# instance fields
.field private final greylist-max-o mPackageName:Ljava/lang/String;

.field private final greylist-max-o mPid:I

.field private final greylist-max-o mUid:I


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 1206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1207
    iput-object p1, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPackageName:Ljava/lang/String;

    .line 1208
    iput p2, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPid:I

    .line 1209
    iput p3, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mUid:I

    .line 1210
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1242
    instance-of v0, p1, Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1243
    return v1

    .line 1245
    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    .line 1246
    return v0

    .line 1248
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 1249
    .local v2, "otherUserInfo":Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    iget-object v3, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPid:I

    iget v4, v2, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPid:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mUid:I

    iget v4, v2, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mUid:I

    if-ne v3, v4, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    .line 1216
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPid()I
    .locals 1

    .line 1223
    iget v0, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPid:I

    return v0
.end method

.method public whitelist getUid()I
    .locals 1

    .line 1230
    iget v0, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mUid:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 1256
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
