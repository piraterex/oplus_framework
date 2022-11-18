.class public Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
.super Ljava/lang/Object;
.source "InteractionJankMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/InteractionJankMonitor$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAttrContext:Landroid/content/Context;

.field private blacklist mAttrCujType:I

.field private blacklist mAttrDeferMonitor:Z

.field private blacklist mAttrSurfaceControl:Landroid/view/SurfaceControl;

.field private blacklist mAttrSurfaceOnly:Z

.field private blacklist mAttrTag:Ljava/lang/String;

.field private blacklist mAttrTimeout:J

.field private blacklist mAttrView:Landroid/view/View;


# direct methods
.method private constructor blacklist <init>(I)V
    .locals 2
    .param p1, "cuj"    # I

    .line 844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 809
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrView:Landroid/view/View;

    .line 810
    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrContext:Landroid/content/Context;

    .line 811
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->-$$Nest$sfgetDEFAULT_TIMEOUT_MS()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrTimeout:J

    .line 812
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrTag:Ljava/lang/String;

    .line 816
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrDeferMonitor:Z

    .line 845
    iput p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrCujType:I

    .line 846
    return-void
.end method

.method private blacklist setContext(Landroid/content/Context;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 894
    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrContext:Landroid/content/Context;

    .line 895
    return-object p0
.end method

.method private blacklist setSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .locals 0
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 902
    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrSurfaceControl:Landroid/view/SurfaceControl;

    .line 903
    return-object p0
.end method

.method private blacklist setSurfaceOnly(Z)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .locals 0
    .param p1, "surfaceOnly"    # Z

    .line 886
    iput-boolean p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrSurfaceOnly:Z

    .line 887
    return-object p0
.end method

.method private blacklist setView(Landroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 854
    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrView:Landroid/view/View;

    .line 855
    return-object p0
.end method

.method public static blacklist withSurface(ILandroid/content/Context;Landroid/view/SurfaceControl;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .locals 2
    .param p0, "cuj"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 827
    new-instance v0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    invoke-direct {v0, p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;-><init>(I)V

    .line 828
    invoke-direct {v0, p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setContext(Landroid/content/Context;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    .line 829
    invoke-direct {v0, p2}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    .line 830
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setSurfaceOnly(Z)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    .line 827
    return-object v0
.end method

.method public static blacklist withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .locals 2
    .param p0, "cuj"    # I
    .param p1, "view"    # Landroid/view/View;

    .line 840
    new-instance v0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    invoke-direct {v0, p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;-><init>(I)V

    invoke-direct {v0, p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setView(Landroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    .line 841
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setContext(Landroid/content/Context;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    .line 840
    return-object v0
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/jank/InteractionJankMonitor$Configuration;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 922
    new-instance v11, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    iget v1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrCujType:I

    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrTag:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrTimeout:J

    iget-boolean v6, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrSurfaceOnly:Z

    iget-object v7, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrSurfaceControl:Landroid/view/SurfaceControl;

    iget-boolean v9, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrDeferMonitor:Z

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;-><init>(ILandroid/view/View;Ljava/lang/String;JZLandroid/content/Context;Landroid/view/SurfaceControl;ZLcom/android/internal/jank/InteractionJankMonitor$Configuration-IA;)V

    return-object v11
.end method

.method public blacklist setDeferMonitorForAnimationStart(Z)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .locals 0
    .param p1, "defer"    # Z

    .line 912
    iput-boolean p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrDeferMonitor:Z

    .line 913
    return-object p0
.end method

.method public blacklist setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .line 874
    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrTag:Ljava/lang/String;

    .line 875
    return-object p0
.end method

.method public blacklist setTimeout(J)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .locals 0
    .param p1, "timeout"    # J

    .line 863
    iput-wide p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->mAttrTimeout:J

    .line 864
    return-object p0
.end method
