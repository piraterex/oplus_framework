.class Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$1;
.super Ljava/lang/Object;
.source "GcmSpecUtil.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->extractMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$name:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$1;->val$name:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method
