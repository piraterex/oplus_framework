.class Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider$1;
.super Ljava/lang/Object;
.source "BouncyCastleProvider.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;

    .line 168
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider$1;->this$0:Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()Ljava/lang/Object;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider$1;->this$0:Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->-$$Nest$msetup(Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;)V

    .line 172
    const/4 v0, 0x0

    return-object v0
.end method
