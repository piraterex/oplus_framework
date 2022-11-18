.class Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/ClassUtil$1;
.super Ljava/lang/Object;
.source "ClassUtil.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$className:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/ClassUtil$1;->val$className:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()Ljava/lang/Object;
    .locals 1

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/ClassUtil$1;->val$className:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 32
    :catch_0
    move-exception v0

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method
