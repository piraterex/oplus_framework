.class public final synthetic Lcom/oplus/reflect/RefStaticMethod$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor blacklist <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/reflect/RefStaticMethod$$ExternalSyntheticLambda0;->f$0:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/oplus/reflect/RefStaticMethod$$ExternalSyntheticLambda0;->f$0:[Ljava/lang/Object;

    check-cast p1, Lcom/oplus/reflect/RefStaticMethod;

    invoke-static {v0, p1}, Lcom/oplus/reflect/RefStaticMethod;->lambda$callIfPresent$0([Ljava/lang/Object;Lcom/oplus/reflect/RefStaticMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
