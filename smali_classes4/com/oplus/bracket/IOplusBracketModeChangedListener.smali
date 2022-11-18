.class public interface abstract Lcom/oplus/bracket/IOplusBracketModeChangedListener;
.super Ljava/lang/Object;
.source "IOplusBracketModeChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/bracket/IOplusBracketModeChangedListener$Stub;,
        Lcom/oplus/bracket/IOplusBracketModeChangedListener$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.bracket.IOplusBracketModeChangedListener"


# virtual methods
.method public abstract whitelist onBindService(Lcom/oplus/bracket/IOplusBracketWindowObserver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onBracketModeChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onBracketRegionChange(Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onUnBindService(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
