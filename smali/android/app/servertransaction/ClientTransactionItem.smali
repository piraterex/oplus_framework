.class public abstract Landroid/app/servertransaction/ClientTransactionItem;
.super Ljava/lang/Object;
.source "ClientTransactionItem.java"

# interfaces
.implements Landroid/app/servertransaction/BaseClientRequest;
.implements Landroid/os/Parcelable;


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getPostExecutionState()I
    .locals 1

    .line 38
    const/4 v0, -0x1

    return v0
.end method
