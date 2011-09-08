//
// Copyright 2011 Itty Bitty Apps Pty Ltd
//
// Licensed under the Apache License, Version 2.0 (the "License"); you may not use this
// file except in compliance with the License. You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software distributed under
// the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
// ANY KIND, either express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

#import "IBATitleFormField.h"
#import "IBAFormFieldStyle.h"
#import "IBALabelFormCell.h"

@implementation IBATitleFormField

- (IBAFormFieldCell *)cell {
	if (cell_ == nil) {
		cell_ = [[IBALabelFormCell alloc] initWithFormFieldStyle:self.formFieldStyle reuseIdentifier:@"Cell" validator:self.validator];
	}
	
	return cell_;
}

- (void)updateCellContents {
	self.cell.label.text = self.title;
}

@end
