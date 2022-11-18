.class public Landroid/window/OplusStartingWindowExtendedInfo;
.super Ljava/lang/Object;
.source "OplusStartingWindowExtendedInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/OplusStartingWindowExtendedInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAppToken:Landroid/os/IBinder;

.field private blacklist mIsExceptionListApp:Z

.field private blacklist mIsSystemApp:Z

.field private blacklist mPreviewBitmap:Landroid/graphics/Bitmap;

.field private blacklist mSupportSplashScreenPreview:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Landroid/window/OplusStartingWindowExtendedInfo$1;

    invoke-direct {v0}, Landroid/window/OplusStartingWindowExtendedInfo$1;-><init>()V

    sput-object v0, Landroid/window/OplusStartingWindowExtendedInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/OplusStartingWindowExtendedInfo;->mAppToken:Landroid/os/IBinder;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/OplusStartingWindowExtendedInfo;->mSupportSplashScreenPreview:Z

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/OplusStartingWindowExtendedInfo;->mIsSystemApp:Z

    .line 40
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/window/OplusStartingWindowExtendedInfo;->mPreviewBitmap:Landroid/graphics/Bitmap;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/OplusStartingWindowExtendedInfo;->mIsExceptionListApp:Z

    .line 42
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAppToken()Landroid/os/IBinder;
    .locals 1

    .line 77
    iget-object v0, p0, Landroid/window/OplusStartingWindowExtendedInfo;->mAppToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 61
    iget-object v0, p0, Landroid/window/OplusStartingWindowExtendedInfo;->mPreviewBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public whitelist isExceptionListApp()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Landroid/window/OplusStartingWindowExtendedInfo;->mIsExceptionListApp:Z

    return v0
.end method

.method public whitelist isSupportSplashScreenPreview()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Landroid/window/OplusStartingWindowExtendedInfo;->mSupportSplashScreenPreview:Z

    return v0
.end method

.method public whitelist isSystemApp()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Landroid/window/OplusStartingWindowExtendedInfo;->mIsSystemApp:Z

    return v0
.end method

.method public whitelist setAppToken(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .line 73
    iput-object p1, p0, Landroid/window/OplusStartingWindowExtendedInfo;->mAppToken:Landroid/os/IBinder;

    .line 74
    return-void
.end method

.method public whitelist setExceptionListApp(Z)V
    .locals 0
    .param p1, "isExceptionListApp"    # Z

    .line 94
    iput-boolean p1, p0, Landroid/window/OplusStartingWindowExtendedInfo;->mIsExceptionListApp:Z

    .line 95
    return-void
.end method

.method public whitelist setPreviewBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "previewBitmap"    # Landroid/graphics/Bitmap;

    .line 57
    iput-object p1, p0, Landroid/window/OplusStartingWindowExtendedInfo;->mPreviewBitmap:Landroid/graphics/Bitmap;

    .line 58
    return-void
.end method

.method public whitelist setSupportSplashScreenPreview(Z)V
    .locals 0
    .param p1, "mSupportSplashScreenPreview"    # Z

    .line 65
    iput-boolean p1, p0, Landroid/window/OplusStartingWindowExtendedInfo;->mSupportSplashScreenPreview:Z

    .line 66
    return-void
.end method

.method public whitelist setSystemApp(Z)V
    .locals 0
    .param p1, "systemApp"    # Z

    .line 81
    iput-boolean p1, p0, Landroid/window/OplusStartingWindowExtendedInfo;->mIsSystemApp:Z

    .line 82
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OplusStartingWindowExtendedInfo{mAppToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/OplusStartingWindowExtendedInfo;->mAppToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSupportSplashScreenPreview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/OplusStartingWindowExtendedInfo;->mSupportSplashScreenPreview:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsSystemApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/OplusStartingWindowExtendedInfo;->mIsSystemApp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsExceptionListApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/OplusStartingWindowExtendedInfo;->mIsExceptionListApp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreviewBitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/OplusStartingWindowExtendedInfo;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 104
    iget-object v0, p0, Landroid/window/OplusStartingWindowExtendedInfo;->mAppToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 105
    iget-boolean v0, p0, Landroid/window/OplusStartingWindowExtendedInfo;->mSupportSplashScreenPreview:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 106
    iget-boolean v0, p0, Landroid/window/OplusStartingWindowExtendedInfo;->mIsSystemApp:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 107
    iget-object v0, p0, Landroid/window/OplusStartingWindowExtendedInfo;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 108
    iget-boolean v0, p0, Landroid/window/OplusStartingWindowExtendedInfo;->mIsExceptionListApp:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 109
    return-void
.end method
