.class public final Lcom/android/server/power/WakeLockProto$WakeLockFlagsProto;
.super Ljava/lang/Object;
.source "WakeLockProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WakeLockProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WakeLockFlagsProto"
.end annotation


# static fields
.field public static final blacklist IS_ACQUIRE_CAUSES_WAKEUP:J = 0x10800000001L

.field public static final blacklist IS_ON_AFTER_RELEASE:J = 0x10800000002L

.field public static final blacklist SYSTEM_WAKELOCK:J = 0x10800000003L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/power/WakeLockProto;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/power/WakeLockProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/WakeLockProto;

    .line 11
    iput-object p1, p0, Lcom/android/server/power/WakeLockProto$WakeLockFlagsProto;->this$0:Lcom/android/server/power/WakeLockProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
