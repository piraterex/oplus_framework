.class Landroid/telecom/ConnectionService$6;
.super Landroid/telecom/Connection;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/ConnectionService;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/ConnectionService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/ConnectionService;

    .line 3438
    iput-object p1, p0, Landroid/telecom/ConnectionService$6;->this$0:Landroid/telecom/ConnectionService;

    invoke-direct {p0}, Landroid/telecom/Connection;-><init>()V

    return-void
.end method
