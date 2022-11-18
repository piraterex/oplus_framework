.class Landroid/security/GenerateRkpKey$1;
.super Ljava/lang/Object;
.source "GenerateRkpKey.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/GenerateRkpKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/security/GenerateRkpKey;


# direct methods
.method constructor blacklist <init>(Landroid/security/GenerateRkpKey;)V
    .locals 0
    .param p1, "this$0"    # Landroid/security/GenerateRkpKey;

    .line 79
    iput-object p1, p0, Landroid/security/GenerateRkpKey$1;->this$0:Landroid/security/GenerateRkpKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 87
    iget-object v0, p0, Landroid/security/GenerateRkpKey$1;->this$0:Landroid/security/GenerateRkpKey;

    invoke-static {v0}, Landroid/security/GenerateRkpKey;->-$$Nest$fgetmCountDownLatch(Landroid/security/GenerateRkpKey;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 88
    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 82
    iget-object v0, p0, Landroid/security/GenerateRkpKey$1;->this$0:Landroid/security/GenerateRkpKey;

    invoke-static {p2}, Landroid/security/IGenerateRkpKeyService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IGenerateRkpKeyService;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/security/GenerateRkpKey;->-$$Nest$fputmBinder(Landroid/security/GenerateRkpKey;Landroid/security/IGenerateRkpKeyService;)V

    .line 83
    iget-object v0, p0, Landroid/security/GenerateRkpKey$1;->this$0:Landroid/security/GenerateRkpKey;

    invoke-static {v0}, Landroid/security/GenerateRkpKey;->-$$Nest$fgetmCountDownLatch(Landroid/security/GenerateRkpKey;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 84
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 92
    iget-object v0, p0, Landroid/security/GenerateRkpKey$1;->this$0:Landroid/security/GenerateRkpKey;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/security/GenerateRkpKey;->-$$Nest$fputmBinder(Landroid/security/GenerateRkpKey;Landroid/security/IGenerateRkpKeyService;)V

    .line 93
    return-void
.end method
