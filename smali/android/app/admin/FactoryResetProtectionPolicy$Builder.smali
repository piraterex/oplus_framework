.class public Landroid/app/admin/FactoryResetProtectionPolicy$Builder;
.super Ljava/lang/Object;
.source "FactoryResetProtectionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/FactoryResetProtectionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mFactoryResetProtectionAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFactoryResetProtectionEnabled:Z


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/admin/FactoryResetProtectionPolicy$Builder;->mFactoryResetProtectionEnabled:Z

    .line 102
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/admin/FactoryResetProtectionPolicy;
    .locals 4

    .line 147
    new-instance v0, Landroid/app/admin/FactoryResetProtectionPolicy;

    iget-object v1, p0, Landroid/app/admin/FactoryResetProtectionPolicy$Builder;->mFactoryResetProtectionAccounts:Ljava/util/List;

    iget-boolean v2, p0, Landroid/app/admin/FactoryResetProtectionPolicy$Builder;->mFactoryResetProtectionEnabled:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/app/admin/FactoryResetProtectionPolicy;-><init>(Ljava/util/List;ZLandroid/app/admin/FactoryResetProtectionPolicy-IA;)V

    return-object v0
.end method

.method public whitelist setFactoryResetProtectionAccounts(Ljava/util/List;)Landroid/app/admin/FactoryResetProtectionPolicy$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/admin/FactoryResetProtectionPolicy$Builder;"
        }
    .end annotation

    .line 119
    .local p1, "factoryResetProtectionAccounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/admin/FactoryResetProtectionPolicy$Builder;->mFactoryResetProtectionAccounts:Ljava/util/List;

    .line 120
    return-object p0
.end method

.method public whitelist setFactoryResetProtectionEnabled(Z)Landroid/app/admin/FactoryResetProtectionPolicy$Builder;
    .locals 0
    .param p1, "factoryResetProtectionEnabled"    # Z

    .line 136
    iput-boolean p1, p0, Landroid/app/admin/FactoryResetProtectionPolicy$Builder;->mFactoryResetProtectionEnabled:Z

    .line 137
    return-object p0
.end method
