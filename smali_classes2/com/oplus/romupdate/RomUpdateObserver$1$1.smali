.class Lcom/oplus/romupdate/RomUpdateObserver$1$1;
.super Ljava/lang/Object;
.source "RomUpdateObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/romupdate/RomUpdateObserver$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/oplus/romupdate/RomUpdateObserver$1;

.field final synthetic blacklist val$context:Landroid/content/Context;

.field final synthetic blacklist val$intent:Landroid/content/Intent;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/romupdate/RomUpdateObserver$1;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oplus/romupdate/RomUpdateObserver$1;

    .line 76
    iput-object p1, p0, Lcom/oplus/romupdate/RomUpdateObserver$1$1;->this$1:Lcom/oplus/romupdate/RomUpdateObserver$1;

    iput-object p2, p0, Lcom/oplus/romupdate/RomUpdateObserver$1$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/oplus/romupdate/RomUpdateObserver$1$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/oplus/romupdate/RomUpdateObserver$1$1;->this$1:Lcom/oplus/romupdate/RomUpdateObserver$1;

    iget-object v0, v0, Lcom/oplus/romupdate/RomUpdateObserver$1;->this$0:Lcom/oplus/romupdate/RomUpdateObserver;

    iget-object v1, p0, Lcom/oplus/romupdate/RomUpdateObserver$1$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/romupdate/RomUpdateObserver$1$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/oplus/romupdate/RomUpdateObserver;->-$$Nest$mdealReceiveEvent(Lcom/oplus/romupdate/RomUpdateObserver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 80
    return-void
.end method
