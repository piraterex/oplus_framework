.class public Landroid/app/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final blacklist WM_ON_ACTIVITY_RESULT_CALLED:I = 0x756e

.field public static final blacklist WM_ON_CREATE_CALLED:I = 0x7569

.field public static final blacklist WM_ON_DESTROY_CALLED:I = 0x756c

.field public static final blacklist WM_ON_PAUSED_CALLED:I = 0x7545

.field public static final blacklist WM_ON_RESTART_CALLED:I = 0x756a

.field public static final blacklist WM_ON_RESUME_CALLED:I = 0x7546

.field public static final blacklist WM_ON_START_CALLED:I = 0x756b

.field public static final blacklist WM_ON_STOP_CALLED:I = 0x7561

.field public static final blacklist WM_ON_TOP_RESUMED_GAINED_CALLED:I = 0x7570

.field public static final blacklist WM_ON_TOP_RESUMED_LOST_CALLED:I = 0x7571


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist writeWmOnActivityResultCalled(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "token"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/16 v1, 0x756e

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 73
    return-void
.end method

.method public static blacklist writeWmOnCreateCalled(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "token"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/16 v1, 0x7569

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 57
    return-void
.end method

.method public static blacklist writeWmOnDestroyCalled(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "token"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 68
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/16 v1, 0x756c

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 69
    return-void
.end method

.method public static blacklist writeWmOnPausedCalled(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "token"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/16 v1, 0x7545

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 45
    return-void
.end method

.method public static blacklist writeWmOnRestartCalled(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "token"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/16 v1, 0x756a

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 61
    return-void
.end method

.method public static blacklist writeWmOnResumeCalled(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "token"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/16 v1, 0x7546

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 49
    return-void
.end method

.method public static blacklist writeWmOnStartCalled(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "token"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/16 v1, 0x756b

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 65
    return-void
.end method

.method public static blacklist writeWmOnStopCalled(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "token"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/16 v1, 0x7561

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 53
    return-void
.end method

.method public static blacklist writeWmOnTopResumedGainedCalled(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "token"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/16 v1, 0x7570

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 77
    return-void
.end method

.method public static blacklist writeWmOnTopResumedLostCalled(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "token"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/16 v1, 0x7571

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 81
    return-void
.end method
