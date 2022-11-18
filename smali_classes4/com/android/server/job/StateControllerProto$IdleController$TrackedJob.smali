.class public final Lcom/android/server/job/StateControllerProto$IdleController$TrackedJob;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto$IdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TrackedJob"
.end annotation


# static fields
.field public static final blacklist INFO:J = 0x10b00000001L

.field public static final blacklist SOURCE_UID:J = 0x10500000002L


# instance fields
.field final synthetic blacklist this$1:Lcom/android/server/job/StateControllerProto$IdleController;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/job/StateControllerProto$IdleController;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/job/StateControllerProto$IdleController;

    .line 214
    iput-object p1, p0, Lcom/android/server/job/StateControllerProto$IdleController$TrackedJob;->this$1:Lcom/android/server/job/StateControllerProto$IdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
