.class public final Landroid/os/UidProto$Wakelock;
.super Ljava/lang/Object;
.source "UidProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UidProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Wakelock"
.end annotation


# static fields
.field public static final greylist-max-o BACKGROUND_PARTIAL:J = 0x10b00000004L

.field public static final greylist-max-o FULL:J = 0x10b00000002L

.field public static final greylist-max-o NAME:J = 0x10900000001L

.field public static final greylist-max-o PARTIAL:J = 0x10b00000003L

.field public static final greylist-max-o WINDOW:J = 0x10b00000005L


# instance fields
.field final synthetic blacklist this$0:Landroid/os/UidProto;


# direct methods
.method public constructor blacklist <init>(Landroid/os/UidProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/UidProto;

    .line 333
    iput-object p1, p0, Landroid/os/UidProto$Wakelock;->this$0:Landroid/os/UidProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
