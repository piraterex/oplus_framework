.class public final synthetic Landroid/content/res/Resources$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/res/Resources$$ExternalSyntheticLambda1;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/content/res/Resources$$ExternalSyntheticLambda1;->f$0:Ljava/util/Map;

    check-cast p1, Landroid/content/res/Resources;

    invoke-static {v0, p1}, Landroid/content/res/Resources;->lambda$dumpHistory$1(Ljava/util/Map;Landroid/content/res/Resources;)V

    return-void
.end method
