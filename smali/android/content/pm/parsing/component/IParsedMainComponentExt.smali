.class public interface abstract Landroid/content/pm/parsing/component/IParsedMainComponentExt;
.super Ljava/lang/Object;
.source "IParsedMainComponentExt.java"


# virtual methods
.method public blacklist getFlags()I
    .locals 1

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist init(Landroid/content/pm/parsing/component/IParsedMainComponentExt;)V
    .locals 0
    .param p1, "parsedMainComponentExt"    # Landroid/content/pm/parsing/component/IParsedMainComponentExt;

    .line 28
    return-void
.end method

.method public blacklist init(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 31
    return-void
.end method

.method public blacklist setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 37
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 34
    return-void
.end method
