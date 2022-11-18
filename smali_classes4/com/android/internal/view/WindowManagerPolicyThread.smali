.class public Lcom/android/internal/view/WindowManagerPolicyThread;
.super Ljava/lang/Object;
.source "WindowManagerPolicyThread.java"


# static fields
.field static blacklist mLooper:Landroid/os/Looper;

.field static blacklist mThread:Ljava/lang/Thread;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist getLooper()Landroid/os/Looper;
    .locals 1

    .line 41
    sget-object v0, Lcom/android/internal/view/WindowManagerPolicyThread;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public static blacklist getThread()Ljava/lang/Thread;
    .locals 1

    .line 36
    sget-object v0, Lcom/android/internal/view/WindowManagerPolicyThread;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public static blacklist set(Ljava/lang/Thread;Landroid/os/Looper;)V
    .locals 0
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "looper"    # Landroid/os/Looper;

    .line 31
    sput-object p0, Lcom/android/internal/view/WindowManagerPolicyThread;->mThread:Ljava/lang/Thread;

    .line 32
    sput-object p1, Lcom/android/internal/view/WindowManagerPolicyThread;->mLooper:Landroid/os/Looper;

    .line 33
    return-void
.end method
