.class public Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
.super Ljava/lang/Object;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/RegisteredServicesCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final greylist-max-o componentInfo:Landroid/content/pm/ComponentInfo;

.field public final greylist componentName:Landroid/content/ComponentName;

.field public final greylist type:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public final greylist uid:I


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/Object;Landroid/content/pm/ComponentInfo;Landroid/content/ComponentName;)V
    .locals 1
    .param p2, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Landroid/content/pm/ComponentInfo;",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    .line 333
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    .local p1, "type":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 335
    iput-object p2, p0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentInfo:Landroid/content/pm/ComponentInfo;

    .line 336
    iput-object p3, p0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 337
    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 338
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 342
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
