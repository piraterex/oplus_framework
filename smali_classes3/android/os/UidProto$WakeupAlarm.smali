.class public final Landroid/os/UidProto$WakeupAlarm;
.super Ljava/lang/Object;
.source "UidProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UidProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WakeupAlarm"
.end annotation


# static fields
.field public static final greylist-max-o COUNT:J = 0x10500000002L

.field public static final greylist-max-o NAME:J = 0x10900000001L


# instance fields
.field final synthetic blacklist this$0:Landroid/os/UidProto;


# direct methods
.method public constructor blacklist <init>(Landroid/os/UidProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/UidProto;

    .line 353
    iput-object p1, p0, Landroid/os/UidProto$WakeupAlarm;->this$0:Landroid/os/UidProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
