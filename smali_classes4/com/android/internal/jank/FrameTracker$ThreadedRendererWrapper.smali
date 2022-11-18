.class public Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;
.super Ljava/lang/Object;
.source "FrameTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/FrameTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadedRendererWrapper"
.end annotation


# instance fields
.field private final blacklist mRenderer:Landroid/view/ThreadedRenderer;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ThreadedRenderer;)V
    .locals 0
    .param p1, "renderer"    # Landroid/view/ThreadedRenderer;

    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;->mRenderer:Landroid/view/ThreadedRenderer;

    .line 649
    return-void
.end method


# virtual methods
.method public blacklist addObserver(Landroid/graphics/HardwareRendererObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/graphics/HardwareRendererObserver;

    .line 656
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;->mRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->addObserver(Landroid/graphics/HardwareRendererObserver;)V

    .line 657
    return-void
.end method

.method public blacklist removeObserver(Landroid/graphics/HardwareRendererObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/graphics/HardwareRendererObserver;

    .line 664
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;->mRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->removeObserver(Landroid/graphics/HardwareRendererObserver;)V

    .line 665
    return-void
.end method
