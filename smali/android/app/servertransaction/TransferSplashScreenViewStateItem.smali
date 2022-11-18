.class public Landroid/app/servertransaction/TransferSplashScreenViewStateItem;
.super Landroid/app/servertransaction/ActivityTransactionItem;
.source "TransferSplashScreenViewStateItem.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/TransferSplashScreenViewStateItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mSplashScreenViewParcelable:Landroid/window/SplashScreenView$SplashScreenViewParcelable;

.field private blacklist mStartingWindowLeash:Landroid/view/SurfaceControl;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/TransferSplashScreenViewStateItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 55
    invoke-direct {p0}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>()V

    .line 56
    sget-object v0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    iput-object v0, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mSplashScreenViewParcelable:Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    .line 57
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    iput-object v0, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mStartingWindowLeash:Landroid/view/SurfaceControl;

    .line 58
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/TransferSplashScreenViewStateItem-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist obtain(Landroid/window/SplashScreenView$SplashScreenViewParcelable;Landroid/view/SurfaceControl;)Landroid/app/servertransaction/TransferSplashScreenViewStateItem;
    .locals 2
    .param p0, "parcelable"    # Landroid/window/SplashScreenView$SplashScreenViewParcelable;
    .param p1, "startingWindowLeash"    # Landroid/view/SurfaceControl;

    .line 64
    const-class v0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;

    .line 65
    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;

    .line 66
    .local v0, "instance":Landroid/app/servertransaction/TransferSplashScreenViewStateItem;
    if-nez v0, :cond_0

    .line 67
    new-instance v1, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;

    invoke-direct {v1}, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;-><init>()V

    move-object v0, v1

    .line 69
    :cond_0
    iput-object p0, v0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mSplashScreenViewParcelable:Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    .line 70
    iput-object p1, v0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mStartingWindowLeash:Landroid/view/SurfaceControl;

    .line 72
    return-object v0
.end method


# virtual methods
.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 2
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 40
    iget-object v0, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mSplashScreenViewParcelable:Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    iget-object v1, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mStartingWindowLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, v0, v1}, Landroid/app/ClientTransactionHandler;->handleAttachSplashScreenView(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/window/SplashScreenView$SplashScreenViewParcelable;Landroid/view/SurfaceControl;)V

    .line 41
    return-void
.end method

.method public blacklist recycle()V
    .locals 0

    .line 45
    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    .line 46
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 50
    iget-object v0, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mSplashScreenViewParcelable:Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 51
    iget-object v0, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mStartingWindowLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 52
    return-void
.end method
