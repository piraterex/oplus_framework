.class public Landroid/util/BoostFramework$ScrollOptimizer;
.super Ljava/lang/Object;
.source "BoostFramework.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/BoostFramework;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollOptimizer"
.end annotation


# static fields
.field public static final blacklist FLING_END:I = 0x0

.field public static final blacklist FLING_START:I = 0x1

.field private static final blacklist QXPERFORMANCE_JAR:Ljava/lang/String; = "/system/framework/QXPerformance.jar"

.field private static final blacklist SCROLL_OPT_CLASS:Ljava/lang/String; = "com.qualcomm.qti.QXPerformance.ScrollOptimizer"

.field private static final blacklist SCROLL_OPT_PROP:Ljava/lang/String; = "ro.vendor.perf.scroll_opt"

.field private static blacklist sGetAdjustedAnimationClock:Ljava/lang/reflect/Method;

.field private static blacklist sGetFrameDelay:Ljava/lang/reflect/Method;

.field private static blacklist sQXIsLoaded:Z

.field private static blacklist sQXPerfClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static blacklist sScrollOptEnable:Z

.field private static blacklist sScrollOptProp:Z

.field private static blacklist sSetBLASTBufferQueue:Ljava/lang/reflect/Method;

.field private static blacklist sSetFlingFlag:Ljava/lang/reflect/Method;

.field private static blacklist sSetFrameInterval:Ljava/lang/reflect/Method;

.field private static blacklist sSetMotionType:Ljava/lang/reflect/Method;

.field private static blacklist sSetUITaskStatus:Ljava/lang/reflect/Method;

.field private static blacklist sSetVsyncTime:Ljava/lang/reflect/Method;

.field private static blacklist sShouldUseVsync:Ljava/lang/reflect/Method;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsScrollOptProp()Z
    .locals 1

    sget-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptProp:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsSetFrameInterval()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetFrameInterval:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsScrollOptEnable(Z)V
    .locals 0

    sput-boolean p0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sminitQXPerfFuncs()V
    .locals 0

    invoke-static {}, Landroid/util/BoostFramework$ScrollOptimizer;->initQXPerfFuncs()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 639
    const/4 v0, 0x0

    sput-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptProp:Z

    .line 640
    sput-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    .line 641
    sput-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sQXIsLoaded:Z

    .line 642
    const/4 v0, 0x0

    sput-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    .line 643
    sput-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetFrameInterval:Ljava/lang/reflect/Method;

    .line 644
    sput-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetBLASTBufferQueue:Ljava/lang/reflect/Method;

    .line 645
    sput-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetMotionType:Ljava/lang/reflect/Method;

    .line 646
    sput-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetVsyncTime:Ljava/lang/reflect/Method;

    .line 647
    sput-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetUITaskStatus:Ljava/lang/reflect/Method;

    .line 648
    sput-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetFlingFlag:Ljava/lang/reflect/Method;

    .line 649
    sput-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sShouldUseVsync:Ljava/lang/reflect/Method;

    .line 650
    sput-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sGetFrameDelay:Ljava/lang/reflect/Method;

    .line 651
    sput-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sGetAdjustedAnimationClock:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getAdjustedAnimationClock(J)J
    .locals 7
    .param p0, "frameTimeNanos"    # J

    .line 807
    move-wide v0, p0

    .line 808
    .local v0, "newFrameTimeNanos":J
    sget-boolean v2, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroid/util/BoostFramework$ScrollOptimizer;->sGetAdjustedAnimationClock:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 810
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 811
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 810
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 812
    .local v2, "retVal":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v3

    .line 815
    .end local v2    # "retVal":Ljava/lang/Object;
    goto :goto_0

    .line 813
    :catch_0
    move-exception v2

    .line 814
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 817
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-wide v0
.end method

.method public static blacklist getFrameDelay(JJ)J
    .locals 7
    .param p0, "defaultDelay"    # J
    .param p2, "lastFrameTimeNanos"    # J

    .line 793
    move-wide v0, p0

    .line 794
    .local v0, "frameDelay":J
    sget-boolean v2, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroid/util/BoostFramework$ScrollOptimizer;->sGetFrameDelay:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 796
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 797
    .local v2, "retVal":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v3

    .line 800
    .end local v2    # "retVal":Ljava/lang/Object;
    goto :goto_0

    .line 798
    :catch_0
    move-exception v2

    .line 799
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 802
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-wide v0
.end method

.method private static blacklist initQXPerfFuncs()V
    .locals 7

    .line 654
    sget-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sQXIsLoaded:Z

    if-eqz v0, :cond_0

    return-void

    .line 657
    :cond_0
    :try_start_0
    const-string/jumbo v0, "ro.vendor.perf.scroll_opt"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptProp:Z

    .line 658
    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 659
    sput-boolean v1, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    .line 660
    sput-boolean v2, Landroid/util/BoostFramework$ScrollOptimizer;->sQXIsLoaded:Z

    .line 661
    return-void

    .line 664
    :cond_1
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v3, "/system/framework/QXPerformance.jar"

    .line 665
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 666
    .local v0, "qXPerfClassLoader":Ldalvik/system/PathClassLoader;
    const-string v3, "com.qualcomm.qti.QXPerformance.ScrollOptimizer"

    invoke-virtual {v0, v3}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    .line 667
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    .line 668
    .local v3, "argClasses":[Ljava/lang/Class;
    sget-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "setFrameInterval"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sSetFrameInterval:Ljava/lang/reflect/Method;

    .line 671
    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/BLASTBufferQueue;

    aput-object v5, v4, v1

    move-object v3, v4

    .line 672
    sget-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "setBLASTBufferQueue"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sSetBLASTBufferQueue:Ljava/lang/reflect/Method;

    .line 674
    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    move-object v3, v4

    .line 675
    sget-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "setMotionType"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sSetMotionType:Ljava/lang/reflect/Method;

    .line 677
    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    move-object v3, v4

    .line 678
    sget-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "setVsyncTime"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sSetVsyncTime:Ljava/lang/reflect/Method;

    .line 680
    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    move-object v3, v4

    .line 681
    sget-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "setUITaskStatus"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sSetUITaskStatus:Ljava/lang/reflect/Method;

    .line 683
    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    move-object v3, v4

    .line 684
    sget-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "setFlingFlag"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sSetFlingFlag:Ljava/lang/reflect/Method;

    .line 686
    sget-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "shouldUseVsync"

    new-array v6, v1, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sShouldUseVsync:Ljava/lang/reflect/Method;

    .line 688
    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    move-object v3, v4

    .line 689
    sget-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    const-string v5, "getFrameDelay"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sGetFrameDelay:Ljava/lang/reflect/Method;

    .line 691
    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    move-object v1, v4

    .line 692
    .end local v3    # "argClasses":[Ljava/lang/Class;
    .local v1, "argClasses":[Ljava/lang/Class;
    sget-object v3, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    const-string v4, "getAdjustedAnimationClock"

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/util/BoostFramework$ScrollOptimizer;->sGetAdjustedAnimationClock:Ljava/lang/reflect/Method;

    .line 695
    sput-boolean v2, Landroid/util/BoostFramework$ScrollOptimizer;->sQXIsLoaded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    .end local v0    # "qXPerfClassLoader":Ldalvik/system/PathClassLoader;
    .end local v1    # "argClasses":[Ljava/lang/Class;
    goto :goto_0

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BoostFramework"

    const-string/jumbo v2, "initQXPerfFuncs failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 700
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static blacklist setBLASTBufferQueue(Landroid/graphics/BLASTBufferQueue;)V
    .locals 4
    .param p0, "blastBufferQueue"    # Landroid/graphics/BLASTBufferQueue;

    .line 724
    sget-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetBLASTBufferQueue:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 726
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    goto :goto_0

    .line 727
    :catch_0
    move-exception v0

    .line 728
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 731
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public static blacklist setFlingFlag(I)V
    .locals 5
    .param p0, "flag"    # I

    .line 768
    sget-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetFlingFlag:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 770
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    goto :goto_0

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 775
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public static blacklist setFrameInterval(J)V
    .locals 2
    .param p0, "frameIntervalNanos"    # J

    .line 704
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/util/BoostFramework$ScrollOptimizer$1;

    invoke-direct {v1, p0, p1}, Landroid/util/BoostFramework$ScrollOptimizer$1;-><init>(J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 719
    .local v0, "initThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 720
    return-void
.end method

.method public static blacklist setMotionType(I)V
    .locals 5
    .param p0, "eventType"    # I

    .line 735
    sget-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetMotionType:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 737
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    goto :goto_0

    .line 738
    :catch_0
    move-exception v0

    .line 739
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 742
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public static blacklist setUITaskStatus(Z)V
    .locals 5
    .param p0, "running"    # Z

    .line 757
    sget-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetUITaskStatus:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 759
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    goto :goto_0

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 764
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public static blacklist setVsyncTime(J)V
    .locals 5
    .param p0, "vsyncTimeNanos"    # J

    .line 746
    sget-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetVsyncTime:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 748
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    goto :goto_0

    .line 749
    :catch_0
    move-exception v0

    .line 750
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 753
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public static blacklist shouldUseVsync(Z)Z
    .locals 4
    .param p0, "defaultVsyncFlag"    # Z

    .line 779
    move v0, p0

    .line 780
    .local v0, "useVsync":Z
    sget-boolean v1, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/util/BoostFramework$ScrollOptimizer;->sShouldUseVsync:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 782
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 783
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 786
    .end local v1    # "retVal":Ljava/lang/Object;
    goto :goto_0

    .line 784
    :catch_0
    move-exception v1

    .line 785
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 788
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v0
.end method
