.class Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;
.super Ljava/lang/Object;
.source "BrightnessSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/display/BrightnessSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessSyncObserver"
.end annotation


# instance fields
.field private final blacklist mContentObserver:Landroid/database/ContentObserver;

.field private blacklist mIsObserving:Z

.field private final blacklist mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field final synthetic blacklist this$0:Lcom/android/internal/display/BrightnessSynchronizer;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/display/BrightnessSynchronizer;)V
    .locals 1

    .line 489
    iput-object p1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    new-instance v0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver$1;

    invoke-direct {v0, p0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver$1;-><init>(Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;)V

    iput-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 505
    new-instance v0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver$2;

    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fgetmHandler(Lcom/android/internal/display/BrightnessSynchronizer;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver$2;-><init>(Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/display/BrightnessSynchronizer;Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;-><init>(Lcom/android/internal/display/BrightnessSynchronizer;)V

    return-void
.end method


# virtual methods
.method blacklist isObserving()Z
    .locals 1

    .line 518
    iget-boolean v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->mIsObserving:Z

    return v0
.end method

.method blacklist startObserving()V
    .locals 6

    .line 522
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fgetmContext(Lcom/android/internal/display/BrightnessSynchronizer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 523
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$sfgetBRIGHTNESS_URI()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 525
    iget-object v1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fgetmDisplayManager(Lcom/android/internal/display/BrightnessSynchronizer;)Landroid/hardware/display/DisplayManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v3, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v3}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fgetmHandler(Lcom/android/internal/display/BrightnessSynchronizer;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x8

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    .line 527
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->mIsObserving:Z

    .line 528
    return-void
.end method
