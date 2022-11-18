.class public Lcom/android/internal/app/ActivityTrigger;
.super Ljava/lang/Object;
.source "ActivityTrigger.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ActivityTrigger"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method private native blacklist native_at_deinit()V
.end method

.method private native blacklist native_at_miscActivity(ILjava/lang/String;II)F
.end method

.method private native blacklist native_at_pauseActivity(Ljava/lang/String;)V
.end method

.method private native blacklist native_at_resumeActivity(Ljava/lang/String;)V
.end method

.method private native blacklist native_at_startActivity(Ljava/lang/String;I)I
.end method

.method private native blacklist native_at_startApp(Ljava/lang/String;I)I
.end method

.method private native blacklist native_at_stopActivity(Ljava/lang/String;)V
.end method


# virtual methods
.method public blacklist activityMiscTrigger(ILjava/lang/String;II)F
    .locals 1
    .param p1, "func"    # I
    .param p2, "activity"    # Ljava/lang/String;
    .param p3, "flag"    # I
    .param p4, "type"    # I

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/app/ActivityTrigger;->native_at_miscActivity(ILjava/lang/String;II)F

    move-result v0

    return v0
.end method

.method public blacklist activityPauseTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "acInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 73
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 74
    .local v0, "cn":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 75
    .local v1, "activity":Ljava/lang/String;
    const-string v2, "ActivityTrigger"

    const-string v3, "ActivityTrigger activityPauseTrigger "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/app/ActivityTrigger;->native_at_pauseActivity(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public blacklist activityResumeTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Z)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "acInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "IsInFullScreen"    # Z

    .line 64
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 65
    .local v0, "cn":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 67
    .local v1, "activity":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/app/ActivityTrigger;->native_at_resumeActivity(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public blacklist activityStartTrigger(Landroid/content/pm/ApplicationInfo;I)V
    .locals 6
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "pid"    # I

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "reserved":I
    const/4 v1, 0x0

    .line 56
    .local v1, "activity":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-direct {p0, v1, v0}, Lcom/android/internal/app/ActivityTrigger;->native_at_startApp(Ljava/lang/String;I)I

    .line 59
    return-void
.end method

.method public blacklist activityStopTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "acInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 82
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 83
    .local v0, "cn":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 84
    .local v1, "activity":Ljava/lang/String;
    const-string v2, "ActivityTrigger"

    const-string v3, "ActivityTrigger activityStopTrigger "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/app/ActivityTrigger;->native_at_stopActivity(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/internal/app/ActivityTrigger;->native_at_deinit()V

    .line 50
    return-void
.end method
