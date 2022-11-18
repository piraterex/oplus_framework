.class public interface abstract Landroid/security/metrics/IKeystoreMetrics;
.super Ljava/lang/Object;
.source "IKeystoreMetrics.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/metrics/IKeystoreMetrics$Stub;,
        Landroid/security/metrics/IKeystoreMetrics$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 147
    const-string v0, "android$security$metrics$IKeystoreMetrics"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/security/metrics/IKeystoreMetrics;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract blacklist pullMetrics(I)[Landroid/security/metrics/KeystoreAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
