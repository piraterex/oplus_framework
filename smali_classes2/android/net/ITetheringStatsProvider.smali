.class public interface abstract Landroid/net/ITetheringStatsProvider;
.super Ljava/lang/Object;
.source "ITetheringStatsProvider.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ITetheringStatsProvider$Stub;,
        Landroid/net/ITetheringStatsProvider$Default;
    }
.end annotation


# static fields
.field public static final greylist-max-o QUOTA_UNLIMITED:I = -0x1


# virtual methods
.method public abstract greylist-max-o getTetherStats(I)Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o setInterfaceQuota(Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
