/*
 * barrier -- mouse and keyboard sharing utility
 * Copyright (C) 2012-2016 Symless Ltd.
 * Copyright (C) 2004 Chris Schoeneman
 * 
 * This package is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * found in the file LICENSE that should have accompanied this file.
 * 
 * This package is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include "OSXAppearance.h"
//#include "base/Log.h"

//#include "qcocoaintegration.h"
//#include "qcocoaapplication.h"

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <Cocoa/Cocoa.h>


OSXAppearance::OSXAppearance()
{
    init();
    //LOG((CLOG_DEBUG1 "OSXAppearance"));
}

OSXAppearance::~OSXAppearance()
{
    //LOG((CLOG_DEBUG1 "~OSXAppearance"));
}

void OSXAppearance::init()
{
    //LOG((CLOG_DEBUG1 "init"));
    // TODO Disable dark mode on Qt-based applications until we can fix QMacStyle
    // https://bugreports.qt.io/browse/QTBUG-68850
    #if __MAC_OS_X_VERSION_MIN_REQUIRED >= 101400 // macOS Mojave
        NSApplication *cocoaApplication = [NSApplication sharedApplication];
        cocoaApplication.appearance = [NSAppearance appearanceNamed: NSAppearanceNameAqua];
    #endif
}
/**
int main()
{
    MyClass myClassInstance;
}
 */
