.class public Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;
.super Ljava/lang/Object;
.source "ScreenshotHelper.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/ScreenshotHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenshotRequest"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBitmapBundle:Landroid/os/Bundle;

.field private blacklist mBoundsInScreen:Landroid/graphics/Rect;

.field private blacklist mHasNavBar:Z

.field private blacklist mHasStatusBar:Z

.field private blacklist mInsets:Landroid/graphics/Insets;

.field private blacklist mSource:I

.field private blacklist mTaskId:I

.field private blacklist mTopComponent:Landroid/content/ComponentName;

.field private blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 149
    new-instance v0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest$1;

    invoke-direct {v0}, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest$1;-><init>()V

    sput-object v0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(ILandroid/os/Bundle;Landroid/graphics/Rect;Landroid/graphics/Insets;IILandroid/content/ComponentName;)V
    .locals 0
    .param p1, "source"    # I
    .param p2, "bitmapBundle"    # Landroid/os/Bundle;
    .param p3, "boundsInScreen"    # Landroid/graphics/Rect;
    .param p4, "insets"    # Landroid/graphics/Insets;
    .param p5, "taskId"    # I
    .param p6, "userId"    # I
    .param p7, "topComponent"    # Landroid/content/ComponentName;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mSource:I

    .line 66
    iput-object p2, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mBitmapBundle:Landroid/os/Bundle;

    .line 67
    iput-object p3, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mBoundsInScreen:Landroid/graphics/Rect;

    .line 68
    iput-object p4, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mInsets:Landroid/graphics/Insets;

    .line 69
    iput p5, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mTaskId:I

    .line 70
    iput p6, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mUserId:I

    .line 71
    iput-object p7, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mTopComponent:Landroid/content/ComponentName;

    .line 72
    return-void
.end method

.method constructor blacklist <init>(IZZ)V
    .locals 0
    .param p1, "source"    # I
    .param p2, "hasStatus"    # Z
    .param p3, "hasNav"    # Z

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mSource:I

    .line 59
    iput-boolean p2, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mHasStatusBar:Z

    .line 60
    iput-boolean p3, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mHasNavBar:Z

    .line 61
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mSource:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mHasStatusBar:Z

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mHasNavBar:Z

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mBitmapBundle:Landroid/os/Bundle;

    .line 81
    const-class v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mBoundsInScreen:Landroid/graphics/Rect;

    .line 82
    const-class v0, Landroid/graphics/Insets;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/graphics/Insets;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Insets;

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mInsets:Landroid/graphics/Insets;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mTaskId:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mUserId:I

    .line 85
    const-class v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mTopComponent:Landroid/content/ComponentName;

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBitmapBundle()Landroid/os/Bundle;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mBitmapBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getBoundsInScreen()Landroid/graphics/Rect;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mBoundsInScreen:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getHasNavBar()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mHasNavBar:Z

    return v0
.end method

.method public blacklist getHasStatusBar()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mHasStatusBar:Z

    return v0
.end method

.method public blacklist getInsets()Landroid/graphics/Insets;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public blacklist getSource()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mSource:I

    return v0
.end method

.method public blacklist getTaskId()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mTaskId:I

    return v0
.end method

.method public blacklist getTopComponent()Landroid/content/ComponentName;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mTopComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getUserId()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mUserId:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 133
    iget v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-boolean v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mHasStatusBar:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 135
    iget-boolean v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mHasNavBar:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 136
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mBitmapBundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 139
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mBitmapBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 141
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 142
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mInsets:Landroid/graphics/Insets;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 143
    iget v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mTopComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 147
    :goto_0
    return-void
.end method
