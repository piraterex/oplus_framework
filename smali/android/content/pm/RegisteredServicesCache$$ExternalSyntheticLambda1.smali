.class public final synthetic Landroid/content/pm/RegisteredServicesCache$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/content/pm/RegisteredServicesCache;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/content/pm/RegisteredServicesCache;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache$$ExternalSyntheticLambda1;->f$0:Landroid/content/pm/RegisteredServicesCache;

    iput p2, p0, Landroid/content/pm/RegisteredServicesCache$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache$$ExternalSyntheticLambda1;->f$0:Landroid/content/pm/RegisteredServicesCache;

    iget v1, p0, Landroid/content/pm/RegisteredServicesCache$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/RegisteredServicesCache;->lambda$generateServicesMap$1$android-content-pm-RegisteredServicesCache(ILjava/lang/Integer;)Z

    move-result p1

    return p1
.end method
