.class public abstract Landroid/view/SurfaceControl$OnJankDataListener;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnJankDataListener"
.end annotation


# instance fields
.field private final blacklist mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNativePtr(Landroid/view/SurfaceControl$OnJankDataListener;)Lcom/android/internal/util/VirtualRefBasePtr;
    .locals 0

    iget-object p0, p0, Landroid/view/SurfaceControl$OnJankDataListener;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .locals 3

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-static {p0}, Landroid/view/SurfaceControl;->-$$Nest$smnativeCreateJankDataListenerWrapper(Landroid/view/SurfaceControl$OnJankDataListener;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v0, p0, Landroid/view/SurfaceControl$OnJankDataListener;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 463
    return-void
.end method


# virtual methods
.method public abstract blacklist onJankDataAvailable([Landroid/view/SurfaceControl$JankData;)V
.end method
