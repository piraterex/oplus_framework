.class public final Landroid/app/compat/CompatChanges;
.super Ljava/lang/Object;
.source "CompatChanges.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist QUERY_CACHE:Landroid/app/compat/ChangeIdStateCache;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Landroid/app/compat/ChangeIdStateCache;

    invoke-direct {v0}, Landroid/app/compat/ChangeIdStateCache;-><init>()V

    sput-object v0, Landroid/app/compat/CompatChanges;->QUERY_CACHE:Landroid/app/compat/ChangeIdStateCache;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist isChangeEnabled(J)Z
    .locals 1
    .param p0, "changeId"    # J

    .line 59
    invoke-static {p0, p1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static whitelist isChangeEnabled(JI)Z
    .locals 2
    .param p0, "changeId"    # J
    .param p2, "uid"    # I

    .line 100
    sget-object v0, Landroid/app/compat/CompatChanges;->QUERY_CACHE:Landroid/app/compat/ChangeIdStateCache;

    invoke-static {p0, p1, p2}, Landroid/app/compat/ChangeIdStateQuery;->byUid(JI)Landroid/app/compat/ChangeIdStateQuery;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/compat/ChangeIdStateCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static whitelist isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z
    .locals 2
    .param p0, "changeId"    # J
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 78
    sget-object v0, Landroid/app/compat/CompatChanges;->QUERY_CACHE:Landroid/app/compat/ChangeIdStateCache;

    .line 79
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 78
    invoke-static {p0, p1, p2, v1}, Landroid/app/compat/ChangeIdStateQuery;->byPackageName(JLjava/lang/String;I)Landroid/app/compat/ChangeIdStateQuery;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/compat/ChangeIdStateCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static whitelist putAllPackageOverrides(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/app/compat/PackageOverride;",
            ">;>;)V"
        }
    .end annotation

    .line 114
    .local p0, "packageNameToOverrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Long;Landroid/app/compat/PackageOverride;>;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 115
    .local v0, "packageNameToConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/compat/CompatibilityOverrideConfig;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 116
    .local v2, "packageName":Ljava/lang/String;
    new-instance v3, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    .line 117
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-direct {v3, v4}, Lcom/android/internal/compat/CompatibilityOverrideConfig;-><init>(Ljava/util/Map;)V

    .line 116
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .end local v2    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 119
    :cond_0
    new-instance v1, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;

    invoke-direct {v1, v0}, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;-><init>(Ljava/util/Map;)V

    .line 122
    .local v1, "config":Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;
    :try_start_0
    sget-object v2, Landroid/app/compat/CompatChanges;->QUERY_CACHE:Landroid/app/compat/ChangeIdStateCache;

    invoke-virtual {v2}, Landroid/app/compat/ChangeIdStateCache;->getPlatformCompatService()Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/compat/IPlatformCompat;->putAllOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    goto :goto_1

    .line 123
    :catch_0
    move-exception v2

    .line 124
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 126
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public static whitelist putPackageOverrides(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/app/compat/PackageOverride;",
            ">;)V"
        }
    .end annotation

    .line 144
    .local p1, "overrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/app/compat/PackageOverride;>;"
    new-instance v0, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    invoke-direct {v0, p1}, Lcom/android/internal/compat/CompatibilityOverrideConfig;-><init>(Ljava/util/Map;)V

    .line 146
    .local v0, "config":Lcom/android/internal/compat/CompatibilityOverrideConfig;
    :try_start_0
    sget-object v1, Landroid/app/compat/CompatChanges;->QUERY_CACHE:Landroid/app/compat/ChangeIdStateCache;

    invoke-virtual {v1}, Landroid/app/compat/ChangeIdStateCache;->getPlatformCompatService()Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v1

    .line 147
    invoke-interface {v1, v0, p0}, Lcom/android/internal/compat/IPlatformCompat;->putOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 151
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static whitelist removeAllPackageOverrides(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .line 164
    .local p0, "packageNameToOverridesToRemove":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Long;>;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 166
    .local v0, "packageNameToConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 167
    .local v2, "packageName":Ljava/lang/String;
    new-instance v3, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;

    .line 169
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-direct {v3, v4}, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;-><init>(Ljava/util/Set;)V

    .line 167
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .end local v2    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 171
    :cond_0
    new-instance v1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;

    invoke-direct {v1, v0}, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;-><init>(Ljava/util/Map;)V

    .line 174
    .local v1, "config":Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;
    :try_start_0
    sget-object v2, Landroid/app/compat/CompatChanges;->QUERY_CACHE:Landroid/app/compat/ChangeIdStateCache;

    invoke-virtual {v2}, Landroid/app/compat/ChangeIdStateCache;->getPlatformCompatService()Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/compat/IPlatformCompat;->removeAllOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    goto :goto_1

    .line 175
    :catch_0
    move-exception v2

    .line 176
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 178
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public static whitelist removePackageOverrides(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 194
    .local p1, "overridesToRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v0, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;

    invoke-direct {v0, p1}, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;-><init>(Ljava/util/Set;)V

    .line 197
    .local v0, "config":Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;
    :try_start_0
    sget-object v1, Landroid/app/compat/CompatChanges;->QUERY_CACHE:Landroid/app/compat/ChangeIdStateCache;

    invoke-virtual {v1}, Landroid/app/compat/ChangeIdStateCache;->getPlatformCompatService()Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v1

    .line 198
    invoke-interface {v1, v0, p0}, Lcom/android/internal/compat/IPlatformCompat;->removeOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    goto :goto_0

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 202
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
