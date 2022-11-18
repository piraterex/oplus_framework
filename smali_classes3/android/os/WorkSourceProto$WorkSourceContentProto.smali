.class public final Landroid/os/WorkSourceProto$WorkSourceContentProto;
.super Ljava/lang/Object;
.source "WorkSourceProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/WorkSourceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WorkSourceContentProto"
.end annotation


# static fields
.field public static final greylist-max-o NAME:J = 0x10900000002L

.field public static final greylist-max-o UID:J = 0x10500000001L


# instance fields
.field final synthetic blacklist this$0:Landroid/os/WorkSourceProto;


# direct methods
.method public constructor blacklist <init>(Landroid/os/WorkSourceProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/WorkSourceProto;

    .line 11
    iput-object p1, p0, Landroid/os/WorkSourceProto$WorkSourceContentProto;->this$0:Landroid/os/WorkSourceProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
