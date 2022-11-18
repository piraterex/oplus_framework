.class public interface abstract Lcom/oplus/bracket/IOplusBracketWindowObserver;
.super Ljava/lang/Object;
.source "IOplusBracketWindowObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/bracket/IOplusBracketWindowObserver$Stub;,
        Lcom/oplus/bracket/IOplusBracketWindowObserver$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.bracket.IOplusBracketWindowObserver"


# virtual methods
.method public abstract whitelist onSurfaceViewChange(Lcom/oplus/bracket/IOplusBracketModeChangedListener;ILandroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onSurfaceViewShow(Lcom/oplus/bracket/IOplusBracketModeChangedListener;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
