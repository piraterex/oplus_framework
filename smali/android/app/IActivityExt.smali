.class public interface abstract Landroid/app/IActivityExt;
.super Ljava/lang/Object;
.source "IActivityExt.java"


# virtual methods
.method public blacklist debugEventHandled(Landroid/view/InputEvent;Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "detail"    # Ljava/lang/String;

    .line 40
    return-void
.end method

.method public blacklist hookForInputLogIsLevelVerbose(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 37
    return-void
.end method

.method public blacklist hookForInputLogOnTouchEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "localClassName"    # Ljava/lang/String;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 39
    return-void
.end method

.method public blacklist hookForInputLogV(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 38
    return-void
.end method

.method public blacklist isAppDebuggable(Z)Z
    .locals 0
    .param p1, "isAppDebuggable"    # Z

    .line 34
    return p1
.end method

.method public blacklist isLoggable()Z
    .locals 1

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onCreateForActivity(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 27
    return-void
.end method

.method public blacklist osenseSendFling(Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "duration"    # I

    .line 41
    return-void
.end method

.method public blacklist osenseSetSceneActionForFinish(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "scene"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    .line 43
    return-void
.end method

.method public blacklist osenseSetSceneActionIfNeeded(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "scene"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "timeout"    # I

    .line 42
    return-void
.end method

.method public blacklist setIsFinishBoost(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isFinishBoost"    # Z

    .line 44
    return-void
.end method

.method public blacklist shouldInterceptBackKeyForMultiSearch(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 46
    const/4 v0, 0x0

    return v0
.end method
