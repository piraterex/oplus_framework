.class public final Landroid/os/BackTraceProto$Stack;
.super Ljava/lang/Object;
.source "BackTraceProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BackTraceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Stack"
.end annotation


# static fields
.field public static final greylist-max-o DUMP:J = 0x10900000002L

.field public static final greylist-max-o DUMP_DURATION_NS:J = 0x10300000003L

.field public static final greylist-max-o PID:J = 0x10500000001L


# instance fields
.field final synthetic blacklist this$0:Landroid/os/BackTraceProto;


# direct methods
.method public constructor blacklist <init>(Landroid/os/BackTraceProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/BackTraceProto;

    .line 11
    iput-object p1, p0, Landroid/os/BackTraceProto$Stack;->this$0:Landroid/os/BackTraceProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
