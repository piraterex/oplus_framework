.class public final synthetic Lsystem/ext/loader/core/ExtDummy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Class;

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Class;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsystem/ext/loader/core/ExtDummy$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Class;

    iput-boolean p2, p0, Lsystem/ext/loader/core/ExtDummy$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lsystem/ext/loader/core/ExtDummy$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Class;

    iget-boolean v1, p0, Lsystem/ext/loader/core/ExtDummy$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, v1, p1, p2, p3}, Lsystem/ext/loader/core/ExtDummy;->lambda$newProxyInstance$0(Ljava/lang/Class;ZLjava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
