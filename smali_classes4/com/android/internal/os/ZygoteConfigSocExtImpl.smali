.class public Lcom/android/internal/os/ZygoteConfigSocExtImpl;
.super Ljava/lang/Object;
.source "ZygoteConfigSocExtImpl.java"

# interfaces
.implements Lcom/android/internal/os/IZygoteConfigSocExt;


# static fields
.field private static volatile blacklist sInstance:Lcom/android/internal/os/ZygoteConfigSocExtImpl;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "base"    # Ljava/lang/Object;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/os/ZygoteConfigSocExtImpl;
    .locals 2
    .param p0, "base"    # Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/android/internal/os/ZygoteConfigSocExtImpl;->sInstance:Lcom/android/internal/os/ZygoteConfigSocExtImpl;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/android/internal/os/ZygoteConfigSocExtImpl;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/android/internal/os/ZygoteConfigSocExtImpl;->sInstance:Lcom/android/internal/os/ZygoteConfigSocExtImpl;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/android/internal/os/ZygoteConfigSocExtImpl;

    invoke-direct {v1, p0}, Lcom/android/internal/os/ZygoteConfigSocExtImpl;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/internal/os/ZygoteConfigSocExtImpl;->sInstance:Lcom/android/internal/os/ZygoteConfigSocExtImpl;

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 36
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/os/ZygoteConfigSocExtImpl;->sInstance:Lcom/android/internal/os/ZygoteConfigSocExtImpl;

    return-object v0
.end method
