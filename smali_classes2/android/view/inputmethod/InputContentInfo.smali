.class public final Landroid/view/inputmethod/InputContentInfo;
.super Ljava/lang/Object;
.source "InputContentInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/InputContentInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mContentUri:Landroid/net/Uri;

.field private final greylist-max-o mContentUriOwnerUserId:I

.field private final greylist-max-o mDescription:Landroid/content/ClipDescription;

.field private final greylist-max-o mLinkUri:Landroid/net/Uri;

.field private greylist-max-o mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 273
    new-instance v0, Landroid/view/inputmethod/InputContentInfo$1;

    invoke-direct {v0}, Landroid/view/inputmethod/InputContentInfo$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputContentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/Uri;Landroid/content/ClipDescription;)V
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "description"    # Landroid/content/ClipDescription;

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/InputContentInfo;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    .line 76
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "description"    # Landroid/content/ClipDescription;
    .param p3, "linkUri"    # Landroid/net/Uri;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x1

    invoke-static {p1, p2, p3, v0}, Landroid/view/inputmethod/InputContentInfo;->validateInternal(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;Z)Z

    .line 94
    iput-object p1, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUri:Landroid/net/Uri;

    .line 95
    nop

    .line 96
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUriOwnerUserId:I

    .line 97
    iput-object p2, p0, Landroid/view/inputmethod/InputContentInfo;->mDescription:Landroid/content/ClipDescription;

    .line 98
    iput-object p3, p0, Landroid/view/inputmethod/InputContentInfo;->mLinkUri:Landroid/net/Uri;

    .line 99
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUri:Landroid/net/Uri;

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUriOwnerUserId:I

    .line 261
    sget-object v0, Landroid/content/ClipDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipDescription;

    iput-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mDescription:Landroid/content/ClipDescription;

    .line 262
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mLinkUri:Landroid/net/Uri;

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputContentUriToken;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    goto :goto_0

    .line 266
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    .line 268
    :goto_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/inputmethod/InputContentInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputContentInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static greylist-max-o validateInternal(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;Z)Z
    .locals 4
    .param p0, "contentUri"    # Landroid/net/Uri;
    .param p1, "description"    # Landroid/content/ClipDescription;
    .param p2, "linkUri"    # Landroid/net/Uri;
    .param p3, "throwException"    # Z

    .line 126
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 127
    if-nez p3, :cond_0

    .line 130
    return v0

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "contentUri"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    if-nez p1, :cond_3

    .line 133
    if-nez p3, :cond_2

    .line 136
    return v0

    .line 134
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "description"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_3
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "contentUriScheme":Ljava/lang/String;
    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 140
    if-nez p3, :cond_4

    .line 143
    return v0

    .line 141
    :cond_4
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v2, "contentUri must have content scheme"

    invoke-direct {v0, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_5
    if-eqz p2, :cond_8

    .line 146
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "scheme":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 148
    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 149
    :cond_6
    if-nez p3, :cond_7

    .line 153
    return v0

    .line 150
    :cond_7
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v3, "linkUri must have either http or https scheme"

    invoke-direct {v0, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    .end local v2    # "scheme":Ljava/lang/String;
    :cond_8
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getContentUri()Landroid/net/Uri;
    .locals 2

    .line 166
    iget v0, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUriOwnerUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUri:Landroid/net/Uri;

    iget v1, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUriOwnerUserId:I

    invoke-static {v0, v1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 169
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getDescription()Landroid/content/ClipDescription;
    .locals 1

    .line 178
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mDescription:Landroid/content/ClipDescription;

    return-object v0
.end method

.method public whitelist getLinkUri()Landroid/net/Uri;
    .locals 1

    .line 184
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mLinkUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist releasePermission()V
    .locals 1

    .line 228
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    if-nez v0, :cond_0

    .line 229
    return-void

    .line 232
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputContentUriToken;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 236
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist requestPermission()V
    .locals 1

    .line 212
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    if-nez v0, :cond_0

    .line 213
    return-void

    .line 216
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputContentUriToken;->take()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 220
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public greylist-max-o setUriToken(Lcom/android/internal/inputmethod/IInputContentUriToken;)V
    .locals 2
    .param p1, "token"    # Lcom/android/internal/inputmethod/IInputContentUriToken;

    .line 195
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    if-nez v0, :cond_0

    .line 198
    iput-object p1, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    .line 199
    return-void

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "URI token is already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o validate()Z
    .locals 4

    .line 106
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUri:Landroid/net/Uri;

    iget-object v1, p0, Landroid/view/inputmethod/InputContentInfo;->mDescription:Landroid/content/ClipDescription;

    iget-object v2, p0, Landroid/view/inputmethod/InputContentInfo;->mLinkUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/view/inputmethod/InputContentInfo;->validateInternal(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 246
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 247
    iget v0, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUriOwnerUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mDescription:Landroid/content/ClipDescription;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipDescription;->writeToParcel(Landroid/os/Parcel;I)V

    .line 249
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mLinkUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 250
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputContentUriToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 254
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    :goto_0
    return-void
.end method
