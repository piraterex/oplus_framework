.class public final Landroid/os/IncidentHeaderProto$StatsdConfigKey;
.super Ljava/lang/Object;
.source "IncidentHeaderProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IncidentHeaderProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StatsdConfigKey"
.end annotation


# static fields
.field public static final greylist-max-o ID:J = 0x10300000002L

.field public static final greylist-max-o UID:J = 0x10500000001L


# instance fields
.field final synthetic blacklist this$0:Landroid/os/IncidentHeaderProto;


# direct methods
.method public constructor blacklist <init>(Landroid/os/IncidentHeaderProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/IncidentHeaderProto;

    .line 11
    iput-object p1, p0, Landroid/os/IncidentHeaderProto$StatsdConfigKey;->this$0:Landroid/os/IncidentHeaderProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
