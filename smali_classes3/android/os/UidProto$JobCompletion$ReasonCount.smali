.class public final Landroid/os/UidProto$JobCompletion$ReasonCount;
.super Ljava/lang/Object;
.source "UidProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UidProto$JobCompletion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReasonCount"
.end annotation


# static fields
.field public static final greylist-max-o COUNT:J = 0x10500000002L

.field public static final greylist-max-o NAME:J = 0x10e00000001L


# instance fields
.field final synthetic blacklist this$1:Landroid/os/UidProto$JobCompletion;


# direct methods
.method public constructor blacklist <init>(Landroid/os/UidProto$JobCompletion;)V
    .locals 0
    .param p1, "this$1"    # Landroid/os/UidProto$JobCompletion;

    .line 130
    iput-object p1, p0, Landroid/os/UidProto$JobCompletion$ReasonCount;->this$1:Landroid/os/UidProto$JobCompletion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
