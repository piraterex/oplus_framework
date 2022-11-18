.class public final Lcom/android/server/job/StateControllerProto$QuotaController$Package;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto$QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Package"
.end annotation


# static fields
.field public static final blacklist NAME:J = 0x10900000002L

.field public static final blacklist USER_ID:J = 0x10500000001L


# instance fields
.field final synthetic blacklist this$1:Lcom/android/server/job/StateControllerProto$QuotaController;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/job/StateControllerProto$QuotaController;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/job/StateControllerProto$QuotaController;

    .line 368
    iput-object p1, p0, Lcom/android/server/job/StateControllerProto$QuotaController$Package;->this$1:Lcom/android/server/job/StateControllerProto$QuotaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
