.class public final Lcom/android/internal/os/BinderLatencyProto$Dims;
.super Ljava/lang/Object;
.source "BinderLatencyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderLatencyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Dims"
.end annotation


# static fields
.field public static final blacklist BLUETOOTH:I = 0x3

.field public static final blacklist PROCESS_SOURCE:J = 0x10e00000001L

.field public static final blacklist SERVICE_CLASS_NAME:J = 0x10900000003L

.field public static final blacklist SERVICE_CLASS_NAME_AS_ENUM:J = 0x10e00000002L

.field public static final blacklist SERVICE_METHOD_NAME:J = 0x10900000005L

.field public static final blacklist SERVICE_METHOD_NAME_AS_ENUM:J = 0x10e00000004L

.field public static final blacklist SYSTEM_SERVER:I = 0x1

.field public static final blacklist TELEPHONY:I = 0x2

.field public static final blacklist UNKNOWN_CLASS:I = 0x0

.field public static final blacklist UNKNOWN_METHOD:I = 0x0

.field public static final blacklist UNKNOWN_PROCESS_SOURCE:I = 0x0

.field public static final blacklist WIFI:I = 0x4


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/os/BinderLatencyProto;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/BinderLatencyProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/BinderLatencyProto;

    .line 18
    iput-object p1, p0, Lcom/android/internal/os/BinderLatencyProto$Dims;->this$0:Lcom/android/internal/os/BinderLatencyProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
