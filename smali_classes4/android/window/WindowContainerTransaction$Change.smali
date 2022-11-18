.class public Landroid/window/WindowContainerTransaction$Change;
.super Ljava/lang/Object;
.source "WindowContainerTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowContainerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Change"
.end annotation


# static fields
.field public static final blacklist CHANGE_BOUNDS_TRANSACTION:I = 0x2

.field public static final blacklist CHANGE_BOUNDS_TRANSACTION_RECT:I = 0x10

.field public static final blacklist CHANGE_FOCUSABLE:I = 0x1

.field public static final blacklist CHANGE_FORCE_NO_PIP:I = 0x40

.field public static final blacklist CHANGE_HIDDEN:I = 0x8

.field public static final blacklist CHANGE_IGNORE_ORIENTATION_REQUEST:I = 0x20

.field public static final blacklist CHANGE_PIP_CALLBACK:I = 0x4

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/WindowContainerTransaction$Change;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mActivityWindowingMode:I

.field private blacklist mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

.field private blacklist mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

.field private blacklist mChangeMask:I

.field private blacklist mConfigSetMask:I

.field private final blacklist mConfiguration:Landroid/content/res/Configuration;

.field private blacklist mFocusable:Z

.field private blacklist mHidden:Z

.field private blacklist mIgnoreOrientationRequest:Z

.field private blacklist mPinnedBounds:Landroid/graphics/Rect;

.field private blacklist mWindowSetMask:I

.field private blacklist mWindowingMode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBoundsChangeSurfaceBounds(Landroid/window/WindowContainerTransaction$Change;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I
    .locals 0

    iget p0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I
    .locals 0

    iget p0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;
    .locals 0

    iget-object p0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;)I
    .locals 0

    iget p0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmActivityWindowingMode(Landroid/window/WindowContainerTransaction$Change;I)V
    .locals 0

    iput p1, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBoundsChangeSurfaceBounds(Landroid/window/WindowContainerTransaction$Change;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBoundsChangeTransaction(Landroid/window/WindowContainerTransaction$Change;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V
    .locals 0

    iput p1, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V
    .locals 0

    iput p1, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFocusable(Landroid/window/WindowContainerTransaction$Change;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHidden(Landroid/window/WindowContainerTransaction$Change;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIgnoreOrientationRequest(Landroid/window/WindowContainerTransaction$Change;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPinnedBounds(Landroid/window/WindowContainerTransaction$Change;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;I)V
    .locals 0

    iput p1, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWindowingMode(Landroid/window/WindowContainerTransaction$Change;I)V
    .locals 0

    iput p1, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 1044
    new-instance v0, Landroid/window/WindowContainerTransaction$Change$1;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction$Change$1;-><init>()V

    sput-object v0, Landroid/window/WindowContainerTransaction$Change;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 826
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    .line 827
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    .line 828
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    .line 829
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    .line 831
    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    .line 832
    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    .line 833
    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    .line 835
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    .line 836
    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 837
    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

    .line 839
    const/4 v0, -0x1

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    .line 840
    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    .line 842
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 826
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    .line 827
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    .line 828
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    .line 829
    iput-boolean v1, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    .line 831
    iput v1, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    .line 832
    iput v1, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    .line 833
    iput v1, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    .line 835
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    .line 836
    iput-object v1, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 837
    iput-object v1, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

    .line 839
    const/4 v1, -0x1

    iput v1, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    .line 840
    iput v1, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    .line 845
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    .line 846
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    .line 847
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    .line 848
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    .line 849
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    .line 850
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    .line 851
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    .line 852
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 853
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    .line 854
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 856
    :cond_0
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 857
    sget-object v0, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 858
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 860
    :cond_1
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 861
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

    .line 862
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 865
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    .line 866
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    .line 867
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 1041
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActivityWindowingMode()I
    .locals 1

    .line 912
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    return v0
.end method

.method public blacklist getBoundsChangeSurfaceBounds()Landroid/graphics/Rect;
    .locals 1

    .line 971
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getBoundsChangeTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 967
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method public blacklist getChangeMask()I
    .locals 1

    .line 945
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    return v0
.end method

.method public blacklist getConfigSetMask()I
    .locals 1

    .line 950
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    return v0
.end method

.method public blacklist getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 916
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public blacklist getEnterPipBounds()Landroid/graphics/Rect;
    .locals 1

    .line 963
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getFocusable()Z
    .locals 2

    .line 921
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 924
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    return v0

    .line 922
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Focusable not set. check CHANGE_FOCUSABLE first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getHidden()Z
    .locals 2

    .line 929
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 932
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    return v0

    .line 930
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Hidden not set. check CHANGE_HIDDEN first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getIgnoreOrientationRequest()Z
    .locals 2

    .line 937
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    .line 941
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    return v0

    .line 938
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "IgnoreOrientationRequest not set. Check CHANGE_IGNORE_ORIENTATION_REQUEST first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getWindowSetMask()I
    .locals 1

    .line 955
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    return v0
.end method

.method public blacklist getWindowingMode()I
    .locals 1

    .line 908
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    return v0
.end method

.method public blacklist merge(Landroid/window/WindowContainerTransaction$Change;Z)V
    .locals 4
    .param p1, "other"    # Landroid/window/WindowContainerTransaction$Change;
    .param p2, "transfer"    # Z

    .line 875
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p1, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, p1, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    iget v3, p1, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;II)V

    .line 876
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    iget v1, p1, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    .line 877
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    iget v1, p1, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    .line 878
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 879
    iget-boolean v1, p1, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    iput-boolean v1, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    .line 881
    :cond_0
    if-eqz p2, :cond_1

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 882
    iget-object v1, p1, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 883
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 885
    :cond_1
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 886
    if-eqz p2, :cond_2

    iget-object v0, p1, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    .line 888
    :cond_3
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_4

    .line 889
    iget-boolean v1, p1, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    iput-boolean v1, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    .line 891
    :cond_4
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    .line 892
    iget-boolean v1, p1, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    iput-boolean v1, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    .line 894
    :cond_5
    iget v1, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    .line 895
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    if-ltz v0, :cond_6

    .line 896
    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    .line 898
    :cond_6
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    if-ltz v0, :cond_7

    .line 899
    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    .line 901
    :cond_7
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_9

    .line 902
    if-eqz p2, :cond_8

    goto :goto_1

    .line 903
    :cond_8
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_1
    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

    .line 905
    :cond_9
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 9

    .line 976
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    const/high16 v1, 0x20000000

    and-int v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 980
    .local v2, "changesBounds":Z
    :goto_0
    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    .line 984
    .local v1, "changesAppBounds":Z
    :goto_1
    and-int/lit16 v5, v0, 0x400

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move v5, v3

    .line 985
    .local v5, "changesSs":Z
    :goto_2
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_3

    move v3, v4

    :cond_3
    move v0, v3

    .line 987
    .local v0, "changesSss":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 988
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/16 v6, 0x7b

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 989
    const-string v6, ","

    if-eqz v2, :cond_4

    .line 990
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bounds:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v8, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    :cond_4
    if-eqz v1, :cond_5

    .line 993
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "appbounds:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v8, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    :cond_5
    if-eqz v0, :cond_6

    .line 996
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ssw:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    :cond_6
    if-eqz v5, :cond_7

    .line 999
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sw/h:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    :cond_7
    iget v7, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/2addr v4, v7

    if-eqz v4, :cond_8

    .line 1003
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "focusable:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v7, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    :cond_8
    iget-object v4, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v4, :cond_9

    .line 1006
    const-string v4, "hasBoundsTransaction,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    :cond_9
    iget v4, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_a

    .line 1009
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ignoreOrientationRequest:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v7, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    :cond_a
    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1017
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1018
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1019
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1020
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1021
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1022
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1023
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1025
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 1026
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1028
    :cond_0
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_1

    .line 1029
    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1031
    :cond_1
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 1032
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1035
    :cond_2
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1036
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1037
    return-void
.end method
