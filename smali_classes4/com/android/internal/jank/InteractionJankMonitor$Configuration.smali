.class public Lcom/android/internal/jank/InteractionJankMonitor$Configuration;
.super Ljava/lang/Object;
.source "InteractionJankMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/InteractionJankMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mCujType:I

.field private final blacklist mDeferMonitor:Z

.field private final blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field private final blacklist mSurfaceOnly:Z

.field private final blacklist mTag:Ljava/lang/String;

.field private final blacklist mTimeout:J

.field private final blacklist mView:Landroid/view/View;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCujType(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mCujType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTag(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeout(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mTimeout:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmView(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    return-object p0
.end method

.method private constructor blacklist <init>(ILandroid/view/View;Ljava/lang/String;JZLandroid/content/Context;Landroid/view/SurfaceControl;Z)V
    .locals 1
    .param p1, "cuj"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "timeout"    # J
    .param p6, "surfaceOnly"    # Z
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p9, "deferMonitor"    # Z

    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 932
    iput p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mCujType:I

    .line 933
    iput-object p3, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mTag:Ljava/lang/String;

    .line 934
    iput-wide p4, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mTimeout:J

    .line 935
    iput-object p2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    .line 936
    iput-boolean p6, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceOnly:Z

    .line 937
    if-eqz p7, :cond_0

    .line 938
    move-object v0, p7

    goto :goto_0

    .line 939
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mContext:Landroid/content/Context;

    .line 940
    iput-object p8, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 941
    iput-boolean p9, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mDeferMonitor:Z

    .line 942
    invoke-direct {p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->validate()V

    .line 943
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/view/View;Ljava/lang/String;JZLandroid/content/Context;Landroid/view/SurfaceControl;ZLcom/android/internal/jank/InteractionJankMonitor$Configuration-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;-><init>(ILandroid/view/View;Ljava/lang/String;JZLandroid/content/Context;Landroid/view/SurfaceControl;Z)V

    return-void
.end method

.method private blacklist validate()V
    .locals 6

    .line 946
    const/4 v0, 0x0

    .line 947
    .local v0, "shouldThrow":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 949
    .local v1, "msg":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mTag:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 950
    const/4 v0, 0x1

    .line 951
    const-string v2, "Invalid tag; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 954
    const/4 v0, 0x1

    .line 955
    const-string v2, "Invalid timeout value; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceOnly:Z

    if-eqz v2, :cond_4

    .line 958
    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mContext:Landroid/content/Context;

    if-nez v2, :cond_2

    .line 959
    const/4 v0, 0x1

    .line 960
    const-string v2, "Must pass in a context if only instrument surface; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    :cond_2
    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-nez v2, :cond_6

    .line 963
    :cond_3
    const/4 v0, 0x1

    .line 964
    const-string v2, "Must pass in a valid surface control if only instrument surface; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 967
    :cond_4
    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_6

    .line 968
    :cond_5
    const/4 v0, 0x1

    .line 969
    const-string v2, "Null view or unattached view while instrumenting view; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    :cond_6
    :goto_0
    if-nez v0, :cond_7

    .line 975
    return-void

    .line 973
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method blacklist getContext()Landroid/content/Context;
    .locals 1

    .line 996
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public blacklist getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 988
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method blacklist getView()Landroid/view/View;
    .locals 1

    .line 992
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist isSurfaceOnly()Z
    .locals 1

    .line 981
    iget-boolean v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceOnly:Z

    return v0
.end method

.method public blacklist shouldDeferMonitor()Z
    .locals 1

    .line 1003
    iget-boolean v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mDeferMonitor:Z

    return v0
.end method
